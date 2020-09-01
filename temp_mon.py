#place holder
#get temp
#cat sys/class/thermal/thermal_zone0/temp | awk '{print substr($0,1,length()-3)}'