#!/bin/bash
figlet Open_Redirect
echo "                                                       By kartik"
open_red(){
	cat $OPTARG | grep -a -i \=http | /home/kali/bhedak 'http://redirect.com' | while read host do;do curl -s -L $host -I| grep "redirect.com" && echo -e "$host \033[0;31mVulnerable]\n" ;done
}


while getopts 'f:' OPTION; do
  case "$OPTION" in
    f)
	open_red
	;;
    ?)
	echo "script usage:  [-f somevalue] " >&2
	exit 1
	;;
   esac
done
    

