#! / Bin / bash
#Emax SSH service
echo "-------------------------------"
echo "USERNAME EXP DATE"
echo "-------------------------------"
while read expired
do
         ACCOUNT = "$ (echo $ expired | cut -d: F1)"
         ID = "$ (echo $ expired | grep -v nobody | cut -d: -f3)"
         exp = "$ (chage -l $ ACCOUNT | grep 'Account expires' | awk -F": "'{print $ 2}')"
         if [[$ ID -ge 1000]]; then
         printf "% -17s% 2s \ n" "$" account "$ exp"
         fi
done </ etc / passwd
TOTAL = "$ (awk -F: '$ 3> = 1000 && $ 1! =' Nobody '{print $ 1}' / etc / passwd | wc -l)"
echo "-------------------------------"
echo "The number of accounts: $ TOTAL user"
echo "-------------------------------"
echo -e "\ e [1; 33; 44m [Emax_SSH_service] \ e [0m"