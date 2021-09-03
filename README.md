# SSH SEDANG NETWORK
Association By Zero VPN

# autoscript

Step 1 : <br>
```shell
apt-get update && apt-get upgrade -y && update-grub && sleep 2 && reboot
```
Step 2 : <br><br>
```shell
rm -rf setup.sh && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils wget screen curl && wget https://raw.githubusercontent.com/SSHSEDANG4/vpn/main/setup.sh && chmod +x setup.sh && screen -S setup ./setup.sh
```
# service
- OpenSSH <br>
- OpenVPN <br>
- Stunnel4 <br>
- Dropbear <br>
- Squid Proxy <br>
- Badvpn <br>
- Nginx <br>
- Wireguard <br>
- L2TP/IPSEC VPN <br>
- PPTP VPN <br>
- SSTP VPN <br>
- Shadowsocks-R <br>
- SS-OBFS TLS <br>
- SS-OBFS HTTP <br>
- V2RAY Vmess TLS <br>
- V2RAY Vmess None TLS <br>
- V2RAY Vless TLS <br>
- V2RAY Vless None TLS <br>
- Trojan <br>
