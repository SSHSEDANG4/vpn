#!/bin/bash
# Mod by SSH SEDANG NETWORK
opensshport="$(netstat -ntlp | grep -i ssh | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
dropbearport="$(netstat -nlpt | grep -i dropbear | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
#stunnel4port="$(netstat -nlpt | grep -i stunnel | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
openvpnport="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
squidport="$(cat /etc/squid/squid.conf | grep -i http_port | awk '{print $2}')"
wsssl="$(cat ~/log-install.txt | grep -w "Websocket SSL" | cut -d: -f2|sed 's/ //g')"
wsnonssl="$(cat ~/log-install.txt | grep -w "Websocket NON SSL" | cut -d: -f2|sed 's/ //g')"
portwg="$(cat ~/log-install.txt | grep -i Wireguard | cut -d: -f2|sed 's/ //g')"
portl2tp="$(cat ~/log-install.txt | grep -w "L2TP/IPSEC VPN" | cut -d: -f2|sed 's/ //g')"
portpptp="$(cat ~/log-install.txt | grep -w "PPTP VPN" | cut -d: -f2|sed 's/ //g')"
portsstp="$(cat ~/log-install.txt | grep -w "SSTP VPN" | cut -d: -f2|sed 's/ //g')"
portssssl="$(cat ~/log-install.txt | grep -w "SS-OBFS TLS" | cut -d: -f2|sed 's/ //g')"
portsshttp="$(cat ~/log-install.txt | grep -w "SS-OBFS HTTP" | cut -d: -f2|sed 's/ //g')"
portssr="$(cat ~/log-install.txt | grep -w "Shadowsocks-R" | cut -d: -f2|sed 's/ //g')"
portv2raytls="$(cat ~/log-install.txt | grep -w "V2RAY Vmess TLS" | cut -d: -f2|sed 's/ //g')"
portv2raynontls="$(cat ~/log-install.txt | grep -w "V2RAY Vmess None TLS" | cut -d: -f2|sed 's/ //g')"
portvlessnontls="$(cat ~/log-install.txt | grep -w "V2RAY Vless None TLS" | cut -d: -f2|sed 's/ //g')"
portvlesstls="$(cat ~/log-install.txt | grep -w "V2RAY Vless TLS" | cut -d: -f2|sed 's/ //g')"
porttrojan="$(cat ~/log-install.txt | grep -i Trojan | cut -d: -f2|sed 's/ //g')"
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
clear
echo -e "\e[0m                 Port Service                      "
echo -e "\e[94m[][][]======================================[][][]"
echo -e "\e[0m                                                   "
echo -e "         Port OpenSSH     :  "$opensshport
echo -e "         Port Dropbear    :  "$dropbearport
echo -e "         Port SSL         : "$ssl 
echo -e "         Port OpenVPN     :  "$openvpnport
echo -e "         Port Squid       :  "$squidport
echo -e "         Port WS SSL      :  "$wsssl
echo -e "         Port WS NON SSL  :  "$wsnonssl
echo -e "         Port Wireguard   :  "$portwg
echo -e "         Port L2TP        :  "$portl2tp
echo -e "         Port SSTP        :  "$portsstp
echo -e "         Port SS TLS      :  "$portssssl
echo -e "         Port SS HTTP     :  "$portsshttp
echo -e "         Port SSR         :  "$portssr
echo -e "         Port V2RAY TLS   :  "$portv2raytls
echo -e "         Port V2RAY HTTP  :  "$portv2raynontls
echo -e "         Port VLESS TLS   :  "$portvlesstls
echo -e "         Port VLESS HTTP  :  "$portvlessnontls
echo -e "         Port Trojan      :  "$porttrojan
echo -e "         Port XRAY        :  8080 [CLOSED]"
echo -e "\e[0m                                                   "
echo -e "\e[94m[][][]======================================[][][]\e[0m"
