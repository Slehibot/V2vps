#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"

echo -e "$y-------------------------------------------------------------$wh"
echo -e "$y             Telegram : https://t.me/SmartLifeTeam $wh"
echo -e "$y           Premium Auto Script By Lakmal Sandaru $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo ""
echo -e "$y SSH & OpenVPN $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.Create SSH & OpenVPN Account"
echo -e "$yy 2$y.Generate SSH & OpenVPN"
echo -e "$yy 3$y.Extending SSH & OpenVPN Account Active Life"
echo -e "$yy 4$y.Check User Login SSH & OpenVPN"
echo -e "$yy 5$y.Member List"
echo -e "$yy 6$y.Delete SSH & OpenVpn Account"
echo -e "$yy 7$y.Delete User Expired SSH & OpenVPN"
echo -e "$yy 8$y.Set up Autokill SSH"
echo -e "$yy 9$y.Displays Users Who Do Multi Login SSH"
echo -e "$yy 10$y.Restart All Service"
echo -e ""
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 11$y.Create Account XRAYS Vmess Websocket"
echo -e "$yy 12$y.Delete Account XRAYS Vmess Websocket"
echo -e "$yy 13$y.Extending Account XRAYS Vmess Active Life"
echo -e "$yy 14$y.Check User Login XRAYS Vmess"
echo -e "$yy 15$y.Renew Certificate XRAYS Account"
echo -e ""
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 16$y.Create Account XRAYS Vless Websocket"
echo -e "$yy 17$y.Delete Account XRAYS Vless Websocket"
echo -e "$yy 18$y.Extending Account XRAYS Vless Active Life"
echo -e "$yy 19$y.Check User Login XRAYS Vless"
echo -e ""
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 20$y.Create Account XRAYS Trojan"
echo -e "$yy 21$y.Delete Account XRAYS Trojan"
echo -e "$yy 22$y.Extending Account XRAYS Trojan Active Life"
echo -e "$yy 23$y.Check User Login XRAYS Trojan"
echo -e ""
echo -e "$y SYSTEM $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 24$y.Add Or Change Subdomain Host For VPS"
echo -e "$yy 25$y.Change Port Of Some Service"
echo -e "$yy 26$y.Check Usage of VPS Ram"
echo -e "$yy 26$y.Reboot VPS"
echo -e "$yy 28$y.Speedtest VPS"
echo -e "$yy 29$y.Displaying System Information"
echo -e "$yy 30$y.Info Script Auto Install"
echo -e "$y-------------------------------------------------------------$wh"
echo -e ""
read -p "Select From Options [ 1 - 30 ] : " menu
echo -e ""
case $menu in
1)
addssh
;;
2)
trialssh
;;
3)
renewssh
;;
4)
cekssh
;;
5)
member
;;
6)
delssh
;;
7)
delexp
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
11)
addvmess
;;
12)
delvmess
;;
13)
renewvmess
;;
14)
cekvmess
;;
15)
certv2ray
;;
16)
addvless
;;
17)
delvless
;;
18)
renewvless
;;
19)
cekvless
;;
20)
addtrojan
;;
21)
deltrojan
;;
22)
renewtrojan
;;
23)
cektrojan
;;
24)
addhost
;;
25)
changeport
;;
26)
ram
;;
27)
reboot
;;
28)
speedtest
;;
29)
info
;;
30)
about
;;
*)
clear
menu
;;
esac
