#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/Slehibot/SLv2ray/main/ipvps.txt | grep $MYIP )
if [ $MYIP = $MYIP ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
exit 0
fi
source /var/lib/lakmalstorevpn/ipvps.conf
if [[ "$IP2" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP2
fi
read -p "Expired (Days): " masaaktif
clear
IP=$(wget -qO- ipinfo.io/ip);
ssl="$(cat ~/log-install.txt | grep -w "Stunnel5" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
Login=SLVPN`</dev/urandom tr -dc X-Z0-9 | head -c4`

Pass=SLVPN
clear
systemctl restart ws-tls
systemctl restart ws-nontls
systemctl restart ssh-ohp
systemctl restart dropbear-ohp
systemctl restart openvpn-ohp
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
hariini=`date -d "0 days" +"%Y-%m-%d"`
expi=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "Information SSH & OpenVPN"
echo -e "=============================="
echo -e "=   SMART LIFE VPS MANAGER   ="
echo -e "=============================="
echo -e "IP/Host       : $IP"
echo -e "Domain        : $domain"
echo -e "Username      : $Login"
echo -e "Password      : $Pass"
echo -e "OpenSSH       : 22"
echo -e "Dropbear      : 109, 143"
echo -e "SSL/TLS       :$ssl"
echo -e "Port Squid    :$sqd"
echo -e "BadVpn        : 7100-7200-7300"
echo -e "Created       : $hariini"
echo -e "Expired       : $expi"
echo -e "=============================="
echo -e "=       LAKMAL SANDARU       ="
echo -e "=============================="
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e "<br>Information SSH & OpenVPN"
echo -e "<br>=============================="
echo -e "<br>=   SMART LIFE VPS MANAGER   ="
echo -e "<br>=============================="
echo -e "<br>IP/Host       : $IP"
echo -e "<br>Domain        : $domain"
echo -e "<br>Username      : $Login"
echo -e "<br>Password      : $Pass"
echo -e "<br>OpenSSH       : 443, 22"
echo -e "<br>Dropbear      : 443, 109, 143"
echo -e "<br>SSL/TLS       :$ssl"
echo -e "<br>Port Squid    :$sqd"
echo -e "<br>BadVpn        : 7100-7200-7300"
echo -e "<br>Created       : $hariini"
echo -e "<br>Expired       : $expi"
echo -e "<br>=============================="
echo -e "<br>=       LAKMAL SANDARU       ="
echo -e "<br>=============================="

