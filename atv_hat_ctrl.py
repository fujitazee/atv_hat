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

Alternatively, this script can start a process to monitor 
the temperature of multiple network devices and adjust
fan speeds of a specified port, see json for temperature,
fan speed, and network configuration

Usage:
	atv_hat_ctrl.py -h
	atv_hat_ctrl.py -g
    atv_hat_ctrl.py -s=<z> [-l=<y>]
    atv_hat_ctrl.py -s=<z> [-p=<x>]

Options:
    -h      Print help text
    -g      Get the state of LEDs and Ports
    -p=<x>  Port number to toggle state of (0-47) [default: -1]
    -l=<y>  LED number to toggle state of (0-2) [default: -1]
    -s=<z>  State of port/led to set (0|1) (0==off 1==on) [default: 0]

"""
from docopt import docopt;
import RPi.GPIO as GPIO;
import numpy as np;
from smbus2 import SMBus;

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

#get the state of ports and leds in a state variable
def getState():
	ledState = [];
	for ledPin in ledGpioPin:
		GPIO.setup(ledPin,GPIO.OUT); #need to set up every time
		ledState.append(GPIO.input(ledPin));
	return ledState;

########################
##### LED functions ####
########################

#set the led state
def setLedState(ledNum, newState):
	GPIO.setwarnings(False); #ignore re-setup of pins
	GPIO.setmode(GPIO.BCM);
	GPIO.setup(ledGpioPin[ledNum], GPIO.OUT)
	GPIO.output(ledGpioPin[ledNum],newState)

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
#def resetIICExpander():

#returns iicAddress, pca9552 reg offset, data, and shift posisition in register
def lookUpIicCmd(portNum, state, pwm, pwmSel):
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
	if (pwm):
		if (pwmSel):
			data = np.uint8(0x3);
		else:
			data = np.uint8(0x2);
	else:
		data = np.uint8(state); #state corresponds with desired data

	#4. calculate shift value for mask
	shiftVal = 2*(ledPinNum%4);

	return (i2CAddr, pcaRegAddr, data, shiftVal);

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

#get temp
#cat sys/class/thermal/thermal_zone0/temp | awk '{print substr($0,1,length()-3)}'

if __name__ == "__main__":
	args = docopt(__doc__);

	#check state variable if used
	if ((int(args["-s"])) != 0 and int(args["-s"]) != 1):
		print("New State must be 0 or 1");
		exit(-1);

	#check for led updates
	if ((int(args["-l"]) >= 0) and (int(args["-l"]) < 3)):
		setLedState(int(args["-l"]), int(args["-s"]));

	if ((int(args["-p"]) >= 0) and (int(args["-p"]) < 48)):
		#data returns as address, register offset, and data, and offset in register
		iicData = lookUpIicCmd(int(args["-p"]), int(args["-s"]), False, 0);
		#write data new pca data
		readModifyWrite(iicData[0], iicData[1], iicData[2], iicData[3],);


	#get state and print it
	if (args["-g"]):
		state = getState();
		print(state);