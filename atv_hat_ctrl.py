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
    atv_hat_ctrl.py -s=<new_state> ( -p=<port_number> | -l=<led_number>)

Options:
    -h    Print help text
    -g    Get the state of LEDs and Ports
    -p=<port_number> Port number to toggle state of (0-47) [default: -1]
    -l=<led_number>  LED number to toggle state of (0-2) [default: -1]
    -s=<new_state>   State of port/led to set (0|1) (0==off 1==on) [default: 0]

"""
from docopt import docopt;
import RPi.GPIO as GPIO;


ledGpioPin = [21,19,22]; #gpio pin number on atv hat

#FIXME
import pdb;

def setLedState(ledNum, newState):
	GPIO.setwarnings(False); #ignore re-setup of pins
	GPIO.setmode(GPIO.BCM);
	GPIO.setup(ledGpioPin[ledNum], GPIO.OUT)
	GPIO.output(ledGpioPin[ledNum],newState)

def getState():
	ledState = [];
	for ledPin in ledGpioPin:
		GPIO.setup(ledPin,GPIO.OUT); #need to set up every time
		ledState.append(GPIO.input(ledPin));
	return ledState;

if __name__ == "__main__":
	args = docopt(__doc__);

	#check state variable if used
	if ((int(args["-s"])) != 0 and int(args["-s"]) != 1):
		print("New State must be 0 or 1");
		exit(-1);		

	#check for led updates
	if ((int(args["-l"]) >= 0 and int(args["-l"])) < 3):
		setLedState(int(args["-l"]), int(args["-s"]));

	#get state and print it
	if (args["-g"]):
		state = getState();
		print(state);