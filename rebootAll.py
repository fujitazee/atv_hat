from atv_hat_ctrl import *

from time import sleep;

for port in range(0, 48):
    iicData = lookUpIicPortCmd(port, 0); #port 0, state off
    readModifyWrite(iicData[0],iicData[1],iicData[2],iicData[3]);
sleep(0.5)
for port in range(0,48):
    iicData = lookUpIicPortCmd(port, 1); #port 0, state off
    readModifyWrite(iicData[0],iicData[1],iicData[2],iicData[3]);
