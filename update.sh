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
versi=$(cat /home/ver)
if [[ $versi == 1.2 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo "Start Update"
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/menu.sh"
wget -O l2tp "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/l2tp.sh"
wget -O ssh "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/ssh.sh"
wget -O ssssr "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/ssssr.sh"
wget -O sstpp "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/sstpp.sh"
wget -O trojaan "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/trojaan.sh"
wget -O trojanGO "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/trojanGO.sh"
wget -O v2raay "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/v2raay.sh"
wget -O wgr "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/wgr.sh"
wget -O vleess "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/vleess.sh"
wget -O bbr "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/bbr.sh"
wget -O bannerku "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/bannerku"
wget -O add-host "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/add-host.sh"
wget -O about "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/about.sh"
wget -O usernew "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/trial.sh"
wget -O hapus "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/hapus.sh"
wget -O member "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/member.sh"
wget -O delete "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/delete.sh"
wget -O cek "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/cek.sh"
wget -O restart "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/restart.sh"
wget -O speedtest "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/speedtest_cli.py"
wget -O info "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/info.sh"
wget -O ram "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/ram.sh"
wget -O renew "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/renew.sh"
wget -O autokill "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kota/ipvps"
wget -O ceklim "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/tendang.sh"
wget -O clear-log "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/clear-log.sh"
wget -O change-port "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/port-ssl.sh"
wget -O port-wg "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kota/ipvps"
wget -O port-tr "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/port-tr.sh"
wget -O port-sstp "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/port-sstp.sh"
wget -O port-squid "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/port-squid.sh"
wget -O port-ws "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/port-ws.sh"
wget -O port-vless "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/port-vless.sh"
wget -O wbmn "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/webmin.sh"
wget -O xp "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/xp.sh"
wget -O swap "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/swapkvm.sh"
wget -O /usr/bin/user-limit https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/user-limit.sh && chmod +x /usr/bin/user-limit
wget -O auto-reboot "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/auto-reboot.sh"
wget -O running "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/men/running.sh"
wget -O update "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kota/update.sh"
wget -O cfd "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/cfd.sh"
wget -O cff "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/cff.sh"
wget -O cfh "https://raw.githubusercontent.com/SSHSEDANG4/sshsedang/main/kebu/cfh.sh"
wget -O add-trgo "https://raw.githubusercontent.com/halluboys/xzvnct/main/update/add-trgo.sh"
wget -O xp-trgo "https://raw.githubusercontent.com/halluboys/xzvnct/main/update/xp-trgo.sh
wget -O cek-trgo "https://raw.githubusercontent.com/halluboys/xzvnct/main/update/cek-trgo.sh"
wget -O renew-trgo "https://raw.githubusercontent.com/halluboys/xzvnct/main/update/renew-trgo.sh"
wget -O port-trgo "https://raw.githubusercontent.com/halluboys/xzvnct/main/update/port-trgo.sh"
wget -O /usr/bin/del-trgo https://raw.githubusercontent.com/halluboys/xzvnct/main/update/del-trgo && chmod +x /usr/bin/del-trgo
chmod +x menu
chmod +x l2tp
chmod +x ssh
chmod +x ssssr
chmod +x sstpp
chmod +x trojaan
chmod +x trojanGO
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
chmod +x cfd
chmod +x cff
chmod +x cfh
chmod +x add-trgo
chmod +x xp-trgo
chmod +x cek-trgo
chmod +x renew-trgo
chmod +x port-trgo
dos2unix trojanGO
dos2unix del-trgo
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.2" > /home/ver
clear
echo " Fix minor Bugs"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
