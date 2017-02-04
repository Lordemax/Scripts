#!/bin/bash
trap '' 2 # ignore control + c
while true
do
	clear # clear screen for each loop of menu
echo "================="
echo "Menu ---"
echo "================="
echo "Enter 1 to list users-login:"
echo "Enter 2 to list Expired Users:"
echo "Enter 3 to list limit Users:"
echo "Enter 4 to AutoKill:"
echo "Enter 5 to list Vpn login:"
echo "Enter 6 to Limit:"
echo "Enter 7 to Check mrgt users:"
echo "Enter 8 to Check mrgt memory:"
echo "Enter 9 to Bench Network:"
echo "Enter q to quit:"
echo -e "Enter your selection here and hit <return> .. c"
read answer # create variable to retains the answer
case "$answer" in
1) ./userlogin.sh;;
2) ./userexpired.sh;;
3) ./userlimit.sh 2;;
4) ./AutoKill.sh;;
5) ./Vpnlogin.sh;;
6) ./limit.sh;;
7) ./mrtg-user.sh;;
8) ./mrtg-mem.sh;;
9) ./bench-network.sh;;
q) exit ;;
esac
echo -e "Hit the <return> key to continue.. c"
read input ##This cause a pause so we can read the output
#of the selection before the loop clear the screen
done