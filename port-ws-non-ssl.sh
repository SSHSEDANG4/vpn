#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kota/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
tls="$(cat ~/log-install.txt | grep -w "Websocket NON SSL" | cut -d: -f2|sed 's/ //g')"
echo -e "======================================" | lolcat
echo -e "Name : Change Port Websocket NON SSL"
echo -e ""
echo -e "     [1]  Change Port $nonssl"
echo -e "     [x]  Exit"
echo -e ""
echo -e "======================================" | lolcat
echo -e ""
read -p "     Select From Options [1 or x] :  " prot
echo -e ""
case $prot in
1)
read -p "New Port Websocket NON SSL: " stl
if [ -z $stl ]; then
echo "Please Input Port"
exit 0
fi
cek=$(netstat -nutlp | grep -w $stl)
if [[ -z $cek ]]; then
sed -i "s/$tls/$stl/g" /usr/local/bin/ws-dropbear
sed -i "s/   - Websocket NON SSL       : $tls/   - Websocket NON SSL       : $stl/g" /root/log-install.txt
/etc/init.d/python restart > /dev/null
echo -e "\e[032;1mPort $stl modified successfully\e[0m"
else
echo "Port $stl is used"
fi
;;
x)
exit
menu
;;
*)
echo "Please enter an correct number" | lolcat
;;
esac