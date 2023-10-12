#!/bin/bash
# a script to do standared cyberpatriot stuff, shellchecked and everything
input() {
    while :
    do
    # has space infront so programmer dosn't need to include it in any of their querries
    printf " [y/n]: "
    # takes one character of user input
    read -r -n1 awns
    # matches the awns varible to diffrent patterns
    case "$awns" in
    "y")
    printf "\n"
    return 0
    ;;
    "n")
    printf "\n"
    return 1
    ;;
    "q")
    printf "\n Exiting The Full Programme \n"
    exit
    ;;
    *)
    printf "\n"
    continue
    ;;
    esac
    done
}
# remember to allways include the or exit incase their is an inability to change directories
cd ~/ || exit
# because I'm returning true with return 0 as input then when a user presses y it will run
printf "Update and Upgrade system"
if input
then
sudo apt-get update && sudo apt-get upgrade -y
fi
# formatting ?
printf "\n"

printf "Remove unused files"
if input
then
sudo apt remove * -y
fi
printf "\n"

# fire wall
printf "Enable firewall"
if input
then
sudo ufw enable
fi

printf "Show firewall status"
if input
then
sudo ufw status
fi

printf "Deal with users"
if input
then
allusernames=`cat ${studentlist} | awk {'print substr($1,1,1) $2 substr($3,length($3)-3,length($3))'}`
for username in $allusernames
echo $username
done
fi

# end of programme, technecaly unessisary but just to let the programme know
exit