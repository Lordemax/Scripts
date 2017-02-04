#!/bin/bash
#Script auto create trial user SSH
#Account will be expired after 1 day



Login=TNL`</dev/urandom tr -dc X-Z0-9 | head -c4`
day = "1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "==== SUCCESS ===="
echo -e "Porta    : 443 (dropbear)"
echo -e "Username : $Login"
Echo -e "Password: $ Pass \ n"
echo -e "==========================="
echo -e ""
