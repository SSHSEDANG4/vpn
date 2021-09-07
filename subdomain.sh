#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
bl='\e[36;1m'
bd='\e[1m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kota/ipvps| grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin :"
echo "- Telegram : t.me/sshsedang4"
echo "- Whatsapp : wa.me/6282311190332"
exit 0
fi
clear
figlet PANEL SUBDOMAIN | lolcat
echo -e "\e[1;32m═══════════════════════════════════════\e[m" | lolcat
echo -e "          \e[1;31m\e[1;31m═[\e[mSubdomain\e[1;31m]═\e[m" 
echo -e "\e[1;32m═══════════════════════════════════════\e[m" | lolcat
echo -e " 1\e[1;33m)\e[m  Add Subdomain Host For VPS"
echo -e " 2\e[1;33m)\e[m  Add ID Cloudflare"
echo -e " 3\e[1;33m)\e[m  Cloudflare Add-Ons"
echo -e " 4\e[1;33m)\e[m  Pointing BUG V2RAY"
echo -e " 5\e[1;33m)\e[m  Renew Certificate V2RAY"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e " Klik Enter Untuk Kembali Ke Menu"
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e ""
read -p "     Please Input Number  [ 1-4 ] :  "  v2ray
echo -e ""
case $v2ray in
1)
add-host
;;
2)
cff
;;
3)
cfd
;;
4)
cfh
;;
5)
certv2ray
;;
x)
menu
;;
*)
menu
;;
esac
