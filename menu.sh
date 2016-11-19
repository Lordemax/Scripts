#!/bin/bash

 #Menu options
  #options[1]="Create Mass User" #Default Password Is (Password)
options[2]="Add-User" #Single User
options[3]="User-list"

#Actions to take based on selection
function ACTIONS {
 #if [[ ${choices[1]} ]]; then
 #Option 1 selected
 #echo "Option 1 selected"
 #fi

if [[ ${echo -n "User Name:"
read username
echo -n "Expired (yyyy-mm-dd):"
read expired
-e $ expired useradd -d / home / $ username -m -g users -s / bin / false $ username
$ passwd username[2]} ]]; then
#Option 2 selected
echo "Option 2 selected"
fi
if [[ ${getent passwd | grep -f /etc/shells | tr ',' ':' | \
    awk -F: "{print $1, $5}" | while read USER NAME 
    do 
        echo $NAME:$(chage -l $USER| awk -F': ' '/Password expires/{print $2}')
    done | column -ts: [3]} ]]; then
#Option 3 selected
echo "Option 3 selected"
fi
}
#Variables
ERROR=" "
#Clear screen for menu
clear
#Menu function
function MENU {
echo "Menu Options"
for NUM in ${!options[@]}; do
echo "[""${choices[NUM]:- }""]" $(( NUM+1 ))") ${options[NUM]}"

done
echo "$ERROR"
}
#Menu loop
while MENU && read -e -p "Select the desired options using their number (again to uncheck,
ENTER when done): " -n1 SELECTION && [[ -n "$SELECTION" ]]; do
clear
if [[ "$SELECTION" == *[[:digit:]]* && $SELECTION -ge 1 && $SELECTION -le
${#options[@]} ]]; then
(( SELECTION‐‐ ))
if [[ "${choices[SELECTION]}" == "+" ]]; then
choices[SELECTION]=""
else
choices[SELECTION]="+"
fi
ERROR=" "
else
ERROR="Invalid option: $SELECTION"
fi
done
ACTIONS
