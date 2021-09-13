#!/bin/bash
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'
clear
MYIP=$(wget -qO- icanhazip.com);
IZIN=$( curl https://raw.githubusercontent.com/SSHSEDANG4/vps-ip/main/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin :"| lolcat
echo "- Telegram : t.me/sshsedang4"
echo "- Whatsapp : wa.me/6282311190332"
exit 0
fi

clear 
cat /usr/bin/bannerku | lolcat
echo -e  ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
        uptime=$(uptime -p | cut -d " " -f 2-10)

	echo -e "   \e[032;1mCPU Model:\e[0m $cname"
	echo -e "   \e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e "   \e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e "   \e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "   \e[032;1mSystem Uptime:\e[0m $uptime"
	echo -e "   \e[032;1mIsp Name:\e[0m $ISP"
	echo -e "   \e[032;1mCity:\e[0m $CITY"
	echo -e "   \e[032;1mTime:\e[0m $WKT"
	echo -e "   \e[033;1mIPVPS:\e[0m $IPVPS"
echo -e  ""
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "  ||||||||||||||||||||||  OPTION MENU  |||||||||||||||||||||||\e[m" | lolcat                       
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   1\e[1;33m)\e[m  Panel SSH, WebSocket & OpenVPN"
echo -e   "   2\e[1;33m)\e[m  Panel Wireguard "
echo -e   "   3\e[1;33m)\e[m  Panel L2TP & PPTP Account"
echo -e   "   4\e[1;33m)\e[m  Panel SSTP Account"
echo -e   "   5\e[1;33m)\e[m  Panel SSR & SS Account"
echo -e   "   6\e[1;33m)\e[m  Panel V2Ray"
echo -e   "   7\e[1;33m)\e[m  Panel VLess"
echo -e   "   8\e[1;33m)\e[m  Panel Trojan"
echo -e   "   9\e[1;33m)\e[m  Panel Subdomain"
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "  |||||||||||||||||||||||  SYSTEM MENU  ||||||||||||||||||||||\e[m" | lolcat 
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   10\e[1;33m)\e[m  Change Port All Account"
echo -e   "   11\e[1;33m)\e[m  Autobackup Data VPS [CLOSED]"
echo -e   "   12\e[1;33m)\e[m  Backup Data VPS [CLOSED]"
echo -e   "   13\e[1;33m)\e[m  Restore Data VPS [CLOSED]"
echo -e   "   14\e[1;33m)\e[m  Webmin Menu"
echo -e   "   15\e[1;33m)\e[m  Limit Bandwith Speed Server"
echo -e   "   16\e[1;33m)\e[m  Check Usage of VPS Ram" 
echo -e   "   17\e[1;33m)\e[m  Reboot VPS"
echo -e   "   18\e[1;33m)\e[m  Speedtest VPS"
echo -e   "   19\e[1;33m)\e[m  Information Display System" 
echo -e   "   20\e[1;33m)\e[m  Info Script Auto Install"
echo -e   "   21\e[1;33m)\e[m  Install BBR"
echo -e   "   22\e[1;33m)\e[m  Auto Reboot"
echo -e   "   23\e[1;33m)\e[m  Info & Status All Service"
echo -e   "   24\e[1;33m)\e[m  Restart All Service"
echo -e   "   25\e[1;33m)\e[m  Change Banner"
echo -e   "   26\e[1;33m)\e[m  Show Ports"
echo -e   "   27\e[1;33m)\e[m  Clear Log"
echo -e   "   28\e[1;33m)\e[m  Update To Latest Kernel"
echo -e   "   29\e[1;33m)\e[m  Update To Latest Script Version"
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   x)   Exit" | lolcat
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   ""
read -p "     Select From Options [1-28 or x] :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
wgr
;;
3)
l2tp
;;
4)
sstpp
;;
5)
ssssr
;;
6)
v2raay
;;
7)
vleess
;;
8)
trojaan
;;
9)
subdomain
;;
10)
change-port
;;
11)
autobackup
;;
12)
backup
;;
13)
restore
;;
14)
wbmn
;;
15)
limit-speed
;;
16)
ram
;;
17)
reboot
;;
18)
speedtest
;;
19)
info
;;
20)
about
;;
21)
bbr
;;
22)
autoreboot
;;
23)
running
;;
24)
/etc/init.d/nginx restart
/etc/init.d/openvpn restart
/etc/init.d/cron restart
/etc/init.d/ssh restart
/etc/init.d/dropbear restart
/etc/init.d/fail2ban restart
/etc/init.d/stunnel4 restart
/etc/init.d/vnstat restart
/etc/init.d/squid restart
clear
menu
;;
25)
nano /etc/issue.net
;;
26)
list-port
;;
27)
clear-log
clear
menu
;;
28)
kernel-update
;;
29)
update
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac

