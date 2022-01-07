# !/usr/bin/bash
clear
wall "
#Architecture: $(uname -a)
#CPU physical: $(nproc --all)
#vCPU: $(cat /proc/cpuinfo | grep processor | wc -l)
#Memory Usage: $(free -h | grep Mem: | awk '{print $3-0"/"$2-0"Mb"}') $(free -t | grep Mem: | awk '{printf("(%.2f%%)"), $3/$2*100}')
#Disk Usage: $(df -h | grep root | awk '{printf("%d/%dGb (%s)"), $3-0, $2-0, $5}')
#CPU load: $(top -b -n1 | grep %Cpu | awk '{printf("%.1f%%"), $2+$4+$6+$10+$12+$14+$16}')
#Last boot: $(who -b | awk 'NR == 1 {print $3" "$4}')
#LVM use: $(if [[ $(lsblk | grep lvm | wc -l) -gt 0 ]]
then
	echo "yes"
else
	echo "no"
fi)
#Connections TCP : $(netstat | grep tcp | wc -l) ESTABLISHED
#User log: $(who | wc -l)
#Network: IP $(hostname -I) $(ip a | grep ether | awk '{print"("$2")"}')
#Sudo: $(cat /var/log/sudo/sudo.log | grep : | wc -l ) cmd
"
