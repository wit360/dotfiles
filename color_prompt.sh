# Reset
Coff='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;97m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;97m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;97m'       # White

# http://misc.flogisoft.com/bash/tip_colors_and_formatting#terminals_compatibility
Cuser='\e[38;5;148m'       # green
Chost='\e[38;5;111m'      # purple
Croot='\e[38;5;214m'      # orange
Cdir='\e[38;5;214m'      # orange

PS1="[$Cuser\u$Coff"                 # user
PS1="$PS1@$Chost\h$Coff"             # at host
#if [ "x$YROOT_NAME" != "x" ]; then
  PS1="$PS1$Croot($YROOT_NAME)$Coff" # yroot
#fi
PS1="$PS1] $UWhite\W$Coff$ "         # working dir
