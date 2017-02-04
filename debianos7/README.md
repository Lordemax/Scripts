Original Script for VPS Debian 7
===========================
Service  
------
OpenSSH : 22, 143  
Dropbear : 443  
Squid3 : 8080,3128 (limit to IP VPS)
Nginx : 81  
  
Tools  
-----  
axel  
bmon  
htop  
iftop  
mtr  
rkhunter  
nethogs: nethogs venet0  
  
Script  
------  
screenfetch  
./trial.sh (trial account 1 day)
./ps_mem.py  
./speedtest_cli.py --share  
./bench-network.sh  
./userlogin.sh ( user openssh & dropbear login)  
./userexpired.sh (Lock password user expired)  
./userlimit.sh 1 (UserLimited to max 1 login)  
./expire.sh (User Account About to Expire)  
sh dropmon [port] contoh: sh dropmon 443  

FUNCTIONS 
----------  
Webmin   : https://IPVPS:10000/  
Vnstat   : http://IPVPS:81/vnstat/  
MRTG     : http://IPVPS:81/mrtg/  
Timezone : Asia/Kuala_Lumpur 
Fail2Ban : [on]  
VPS Will Reboot very 24 hours  

===========================
