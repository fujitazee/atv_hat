"""
          &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
         &@&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&@@
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&
           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           &@@@@@@   ATV Power Control Hat  @@@@@&
            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&
            &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&
             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     (@@@@@@/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@)
((@@@@@@@@@@(****@@@@@@@@@@@@@@@@@@@@@@@@@@@/***@@@@&&@@@@&)
/@@@@@@@@@@@@***********************************@@@@&&&&@&@&)
(@@@@@@@@@@@@@@*******************************/@@@&&&&&&&&&&)
  (@@@@@@@@@@@@@@@@@%********************&@@@@@@&@&&&&&&&&@)
     (@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&&&&@@)
          (@@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@)
                  (@@@@&&@@@@@@@@@@@&@@@@@)

This script will toggle the state of a given port/led
Or it can set a port to pwm mode and fan speed

Usage:
    atv_hat_ctrl.py -h
    atv_hat_ctrl.py -g
    atv_hat_ctrl.py -r=DEV
    atv_hat_ctrl.py -s=STATE -l=LED
    atv_hat_ctrl.py -s=STATE -p=PORT
    atv_hat_ctrl.py -b=BANK  -w=WIDTH
    atv_hat_ctrl.py --all

Options:
    -h         Print help text
    -g         Get the state of LEDs, Ports, and PWM values
    -r=DEV     Reset target IIC device (0-2) [default: -1]
    -p=PORT    Port number to toggle state of (0-47) [default: -1]
    -l=LED     LED number to toggle state of (0-2) PWM not available for LEDs [default: -1]
    -s=STATE   State of port/led to set (0-3) (0==off,1==on,2==pwm_0,3==pwm_1) [default: -1]
    -b=BANK    Target bank speed to set the pwm value to (0-5) [default: -1]
    -w=WIDTH   Fan Speed in percent to set target bank to. (2.0-100.0) [default: 1.0]
    --all      Reboot all of the devices

"""
from docopt import docopt;
import RPi.GPIO as GPIO;
import numpy as np;
from smbus2 import SMBus;
from time import sleep;
from math import floor;

#FIXME
import pdb;

########################
######## globals #######
########################
ledGpioPin  = [21,19,22]; #gpio pin number on atv hat
iicResetPin = [26,13,27];

########################
## General functions ###
########################

def flooredPercentage(val, digits):
    val *= 10 ** (digits + 2)
    return '{1:.{0}f}%'.format(digits, floor(val) / 10 ** digits)

########################
##### LED functions ####
########################

#set the led state
def setLedState(ledNum, newState):
    GPIO.setwarnings(False); #ignore re-setup of pins
    GPIO.setmode(GPIO.BCM);
    GPIO.setup(ledGpioPin[ledNum], GPIO.OUT)
    GPIO.output(ledGpioPin[ledNum],newState)

#get the state of leds
def getLedState():
    ledState = [];
    GPIO.setwarnings(False);
    GPIO.setmode(GPIO.BCM);
    for ledPin in ledGpioPin:
        GPIO.setup(ledPin,GPIO.OUT); #need to set up every time
        ledState.append(GPIO.input(ledPin));
    return ledState;

#get the state of ports
def getPortState():
    portState = [];
    cnt = 0;
    bus = SMBus(1);
    while cnt < 48:
        #grab i2c address, reg addr, and data shift offset, disregard newData (iicData[2])
        iicData = lookUpIicPortCmd(cnt, 0);
        regData = np.uint8(bus.read_byte_data(iicData[0], iicData[1]));
        state = (regData>>iicData[3])&np.uint8(0x03);
        portState.append(state);
        cnt +=1;

    return portState;
########################
####  iic functions ####
########################

"""
The PCA9552 can be read from and written to using two commands
When you want to read a register, write the register address to
the device and stop, then issue a read byte command. To write
a register write out the register address and the new data.
"""
#reset the target iic expander
def resetIICExpander(iicNum):
    pin = iicResetPin[iicNum];
    GPIO.setwarnings(False); #ignore re-setup of pins
    GPIO.setmode(GPIO.BCM);
    GPIO.setup(pin, GPIO.OUT);
    GPIO.output(pin,0); #set low
    sleep(0.1); #wait 100 milliseconds
    GPIO.output(pin,1); #take out of reset

#returns iicAddress, pca9552 reg offset, data, and shift posisition in register
def lookUpIicPortCmd(portNum, state):
    iicAddress  = [0x60,0x61,0x62]; #i2c mux 7 bit addresses
    #corresponds portnumber to PCA9552 led number
    pcaLedTable = [7,6,5,4,3,2,1,0,8,9,10,11,12,13,14,15];
    lsRegOffset = 6; #offset for first led state modification reg

    #1. look up i2c address
    bankNum = portNum // 16;
    i2CAddr = iicAddress[bankNum];

    #2. look up pcaLedNum
    ledPinNum = pcaLedTable[portNum-(bankNum*16)];
    pcaRegAddr = lsRegOffset+(ledPinNum//4);

    #3. calculate data
    data = np.uint8(state); #state is 2 bit reg value

    #4. calculate shift value for mask
    shiftVal = 2*(ledPinNum%4);

    return (i2CAddr, pcaRegAddr, data, shiftVal);

#returns target i2c address, reg address, and 8 bit pwm value
def lookUpIicBankCmd(bankNum, pwmVal):
    iicAddress  = [0x60,0x61,0x62]; #i2c mux 7 bit addresses
    pwmRegAddr = [3,5];

    #1. target device
    i2CAddr = iicAddress[bankNum//2];

    #2. calculate target reg addr
    regAddr = pwmRegAddr[bankNum%2];

    #3. Calculate PWM value
    iicData = int((pwmVal-1.0)/100.0*256)
    if (iicData<=0):
        iicData = 0x01;

    return (i2CAddr, regAddr, iicData);

#writes prescale reg and pwm value to device
def writePwmValue(iicAddr, regAddr, pwmVal):
    freqPreSclAddr = regAddr-1;
    #write prescaler register
    bus = SMBus(1);
    bus.write_byte_data(iicAddr, freqPreSclAddr, 0x00);

    #write pwm value to bank
    bus.write_byte_data(iicAddr, regAddr, pwmVal);

#reads PWM value of banks
def getPWMValues():
    iicAddress  = [0x60,0x61,0x62]; #i2c mux 7 bit addresses
    pwmRegAddr = [3,5];
    bus = SMBus(1);
    bankPwm = []

    #nested loop through devices and regs
    addrCnt = 0;
    regCnt = 0;
    while addrCnt < 3:
        while regCnt < 2:
            readData = np.uint8(bus.read_byte_data(iicAddress[addrCnt], pwmRegAddr[regCnt]));
            bankPwm.append(flooredPercentage(float(readData/256.0), 1)); #format data as percent
            regCnt += 1;
        regCnt = 0; #reset count for next device

        addrCnt+=1;

    return bankPwm;

#reads PCA9552 register value, modifies it, and writes it back
def readModifyWrite(iicAddr, regAddr, data, shiftVal):
    bus = SMBus(1);

    #read data from reg
    regData = np.uint8(bus.read_byte_data(iicAddr, regAddr));

    #clear bits in position
    mask = ~np.uint8(0x3<<shiftVal);
    clearedReg = (mask&regData);
    newData = (clearedReg|(data)<<shiftVal);

    #write data back to pca
    bus.write_byte_data(iicAddr, regAddr, newData);

def setPortState(port, state):
    #data returns as address, register offset, and data, and offset in register
    iicData = lookUpIicPortCmd(port, state);
    #write data new pca data
    readModifyWrite(iicData[0], iicData[1], iicData[2], iicData[3],);

if __name__ == "__main__":
    args = docopt(__doc__);

    #check for led updates
    if ((int(args["-l"]) >= 0) and (int(args["-l"]) < 3)):
        if (int(args["-s"]) > 1):
            print("PWM not available for LEDs, use state 0 or 1");
            exit(-1);
        setLedState(int(args["-l"]), int(args["-s"]));

    if (int(args["-r"]) >= 0 and (int(args["-r"])) < 3):
        resetIICExpander(int(args["-r"]));

    if ((int(args["-p"]) >= 0) and (int(args["-p"]) < 48)):
        #data returns as address, register offset, and data, and offset in register
        iicData = lookUpIicPortCmd(int(args["-p"]), int(args["-s"]));
        #write data new pca data
        readModifyWrite(iicData[0], iicData[1], iicData[2], iicData[3],);

    if (int(args["-b"]) >=0 and int(args["-b"]) < 6):
        #returns iic address, reg address, and pwm val
        iicData = lookUpIicBankCmd(int(args["-b"]), float(args["-w"]))
        writePwmValue(iicData[0], iicData[1], iicData[2]);

    #get state and print it
    if (args["-g"]):
        #led state
        state = getLedState();
        print("Led State: " + str(state));

        #port state
        state = getPortState();
        print("Port State: " + str(state));

        #pwm values
        state = getPWMValues();
        print("PWM State: " + str(state));

    if (args["--all"]):
        print("Rebooting all devices")
        #turn them all off
        for port in range (0, 8):
            setPortState(port, 0)
        #ports 14 and 15 are used as well
        setPortState(14, 0)
        setPortState(15, 0)

        #sleep after disabling the devices
        sleep(3)

        #turn them all back on
        for port in range (0, 8):
            setPortState(port, 1)
        #ports 14 and 15 are used as well
        setPortState(14, 1)
        setPortState(15, 1)