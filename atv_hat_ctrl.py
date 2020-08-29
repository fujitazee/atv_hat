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
	atv_hat_ctrl.py (-h | --help)
    atv_hat_ctrl.py -s <newState> (--port=<portNum>|--led=<ledNum>)

Options:
    -h --help
    -p --port=<portNum>    Port number to toggle state of (0-47) [default: -1]
    -l --led=<ledNum>     LED number to toggle state of (0-2) [default: -1]
    -s --state=<newState>   State of port/led to set (0|1) (0==off 1==on)

"""
from docopt import docopt;
from gpiozero import LED;
from time import sleep;

def led_blink():

if __name__ == "__main__":
	arguments = docopt(__doc__);
