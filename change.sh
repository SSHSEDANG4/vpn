#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
clear
echo -e "Name : Change Port All Service"
echo -e "======================================" | lolcat
echo -e ""
echo -e "     [1]  Change Port Stunnel4"
echo -e "     [2]  Change Port OpenVPN" 
echo -e "     [3]  Change Port Wireguard" 
echo -e "     [4]  Change Port Vmess" 
echo -e "     [5]  Change Port Vless" 
echo -e "     [6]  Change Port Trojan"
echo -e "     [7]  Change Port Squid" 
echo -e "     [8]  Change Port SSTP" 
echo -e "     [9]  Change Port Websocket NON SSL" 
#echo -e "     [10] Change Port Websocket NON SSL"
#echo -e "     [11] Change Port SSR"
#echo -e "     [10]  Change Port Trojan Go [CLOSED]" | lolcat
echo -e "     [x]  Exit"
echo -e ""
echo -e "======================================" | lolcat
echo -e ""
read -p "     Select From Options [1-9 or x] :  " port
echo -e ""
case $port in
1)
port-ssl
;;
2)
port-ovpn
;;
3)
port-wg
;;
4)
port-ws
;;
5)
port-vless
;;
6)
port-tr
;;
7)
port-squid
;;
8)
port-sstp
;;
9)
port-ws-non-ssl
;;
10)
port-ws-non-ssl
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac
