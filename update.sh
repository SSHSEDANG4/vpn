#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
IZIN=$( curl https://raw.githubusercontent.com/SSHSEDANG4/vps-ip/main/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin"| lolcat
echo "Telegram : t.me/sshsedang4"
echo "Whatsapp : 082311190332"
exit 0
fi

clear
echo "Starting Update" | lolcat
echo "" | lolcat
echo "................." | lolcat
# update
cd /usr/bin

wget -O list-port "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/list-port.sh"
wget -O menu "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/menu.sh"
wget -O l2tp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/l2tp.sh"
wget -O ssh "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/ssh.sh"
wget -O ssssr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/ssssr.sh"
wget -O sstpp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/sstpp.sh"
wget -O v2raay "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/v2raay.sh"
wget -O wgr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/wgr.sh"
wget -O vleess "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/vleess.sh"
wget -O bbr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/bbr.sh"
wget -O bannerku "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/bannerku"
wget -O add-host "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/add-host.sh"
wget -O about "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/about.sh"
wget -O usernew "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/trial.sh"
wget -O hapus "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/hapus.sh"
wget -O member "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/member.sh"
wget -O delete "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/delete.sh"
wget -O cek "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cek.sh"
wget -O restart "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/restart.sh"
wget -O info "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/info.sh"
wget -O ram "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/ram.sh"
wget -O renew "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew.sh"
wget -O autokill "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/tendang.sh"
wget -O clear-log "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/clear-log.sh"
wget -O change-port "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/port-ssl.sh"
wget -O port-wg "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/port-wg.sh"
wget -O port-tr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/port-tr.sh"
wget -O port-sstp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/port-sstp.sh"
wget -O port-squid "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/port-squid.sh"
wget -O port-ws "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/port-ws.sh"
wget -O port-vless "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/port-vless.sh"
wget -O wbmn "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/webmin.sh"
wget -O /usr/bin/user-limit https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/user-limit.sh && chmod +x /usr/bin/user-limit
wget -O autoreboot "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/autoreboot.sh"
wget -O running "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/running.sh"
wget -O update "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/update.sh"
wget -O add-wg "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/add-wg.sh"
wget -O del-wg "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/del-wg.sh"
wget -O cek-wg "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cek-wg.sh"
wget -O renew-wg "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew-wg.sh"
wget -O add-l2tp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/add-l2tp.sh"
wget -O del-l2tp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/del-l2tp.sh"
wget -O add-pptp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/add-pptp.sh"
wget -O del-pptp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/del-pptp.sh"
wget -O cek-pptp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cek-pptp.sh"
wget -O renew-pptp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew-pptp.sh"
wget -O renew-l2tp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew-l2tp.sh"
wget -O add-ss "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/add-ss.sh"
wget -O del-ss "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/del-ss.sh"
wget -O cek-ss "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cek-ss.sh"
wget -O renew-ss "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew-ss.sh"
wget -O add-ssr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/add-ssr.sh"
wget -O del-ssr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/del-ssr.sh"
wget -O renew-ssr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew-ssr.sh"
wget -O add-ws "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/add-ws.sh"
wget -O add-vless "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/add-vless.sh"
wget -O add-tr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/add-tr.sh"
wget -O del-ws "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/del-ws.sh"
wget -O del-vless "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/del-vless.sh"
wget -O del-tr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/del-tr.sh"
wget -O cek-ws "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cek-ws.sh"
wget -O cek-vless "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cek-vless.sh"
wget -O cek-tr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cek-tr.sh"
wget -O renew-ws "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew-ws.sh"
wget -O renew-vless "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew-vless.sh"
wget -O renew-tr "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew-tr.sh"
wget -O add-sstp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/add-sstp.sh"
wget -O del-sstp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/del-sstp.sh"
wget -O cek-sstp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cek-sstp.sh"
wget -O renew-sstp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew-sstp.sh"
wget -O port-ws-ssl "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/port-ws-ssl.sh"
wget -O cfd "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cfd.sh"
wget -O cff "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cff.sh"
wget -O cfh "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/cfh.sh"
wget -O subdomain "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/subdomain.sh"
wget -O port-ws-non-ssl "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/port-ws-non-ssl.sh"

chmod +x menu
chmod +x l2tp
chmod +x ssh
chmod +x ssssr
chmod +x sstpp
chmod +x v2raay
chmod +x wgr
chmod +x vleess
chmod +x bbr
chmod +x bannerku
chmod +x add-host
chmod +x usernew
chmod +x trial
chmod +x hapus
chmod +x member
chmod +x delete
chmod +x cek
chmod +x restart
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renew
chmod +x clear-log
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-sstp
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x swap
chmod +x autoreboot
chmod +x running
chmod +x update
chmod +x add-wg
chmod +x del-wg
chmod +x cek-wg
chmod +x renew-wg
chmod +x add-l2tp && sed -i -e 's/\r$//' add-l2tp
chmod +x del-l2tp
chmod +x add-pptp
chmod +x del-pptp
chmod +x cek-pptp
chmod +x add-ss
chmod +x del-ss
chmod +x cek-ss
chmod +x renew-ss
chmod +x add-ssr
chmod +x del-ssr
chmod +x renew-ssr
chmod +x add-ws
chmod +x add-vless
chmod +x add-tr
chmod +x del-ws
chmod +x del-vless
chmod +x del-tr
chmod +x cek-ws
chmod +x cek-vless
chmod +x cek-tr
chmod +x renew-ws
chmod +x renew-vless
chmod +x renew-tr
chmod +x add-sstp
chmod +x del-sstp
chmod +x cek-sstp
chmod +x renew-sstp
chmod +x port-ws-ssl
chmod +x cfd
chmod +x cff
chmod +x cfh
chmod +x subdomain
chmod +x port-ws-non-ssl
chmod +x list-port

clear
echo " Successfully Update :" | lolcat
echo " - Fix minor Bugs"
echo ""
echo " Rebooting in 5 Sec"
echo "" | lolcat
echo " ................." | lolcat
sleep 5
rm -f update.sh
reboot
