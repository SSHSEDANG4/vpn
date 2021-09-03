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
MYIP=$(wget -qO- ifconfig.co);

echo "Start Update"
cd /usr/bin
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
wget -O speedtest "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/speedtest_cli.py"
wget -O info "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/info.sh"
wget -O ram "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/ram.sh"
wget -O renew "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/renew.sh"
wget -O autokill "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kota/ipvps"
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
wget -O xp "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/xp.sh"
wget -O swap "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/swapkvm.sh"
wget -O /usr/bin/user-limit https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/user-limit.sh && chmod +x /usr/bin/user-limit
wget -O auto-reboot "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/auto-reboot.sh"
wget -O running "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/running.sh"
wget -O update "https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/update.sh"

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
chmod +x speedtest
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
chmod +x xp
chmod +x swap
chmod +x auto-reboot
chmod +x running
chmod +x update

clear
echo " Fix minor Bugs"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
