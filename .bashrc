
#=== start of automatically maintained lines (do not delete)===
# .bashrc, sourced by interactive non-login shells (also called by .bash_profile)
export PATH=/sbin:/usr/sbin:/bin:/usr/bin:/home/y/bin:/usr/local/bin:/usr/X11R6/bin
umask 022
export CVSROOT=vault.yahoo.com:/CVSROOT
export CVS_RSH=/usr/local/bin/ssh
if [ "$PS1" != "" ]
then
	PS1="\h \t \w \$ "
	  setenv ()  { export $1="$2"; }
	unsetenv ()  { unset $*; }
fi
#===   end of automatically maintained lines (do not delete)===
# per-user custom comands go here...


#yssh
if [ -x /usr/local/bin/yssh ]; then
	export SVN_SSH="/usr/local/bin/yssh -q"
	alias ssh=yssh
	alias scp=yscp 
fi
if [ -x /usr/local/bin/yssh-find-agent ]; then
	export SSH_AUTH_SOCK=`/usr/local/bin/yssh-find-agent`
fi


#vi as svn editor
export SVN_EDITOR="/usr/bin/vim"
alias vi="vim"

#export LSCOLORS=dxfxcxdxbxegedabagacad
#LS_COLORS=di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:
alias ls="ls -hG --color=auto"
alias ll="ls -hlG --color=auto"
export GREP_OPTIONS='--color=always'

# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# quick alias for jumping around
alias bashrc="vi ~/.bashrc;source ~/.bashrc"
alias alog="tail /home/y/logs/yapache/us/access -f"
alias elog="tail /home/y/logs/yapache/all/error -f"

# show yroot
PS1="[" 
PS1="$PS1\[\e[36m\]\u\[\e[0m\]" 
PS1="$PS1@"

if [ "x$YROOT_NAME" != "x" ]; then
	# Yroot Indicator 
	PS1="$PS1\[\e[32;40m\]$YROOT_NAME\[\e[0m\]" 
	PS1="$PS1@"
fi

PS1="$PS1\[\e[34;1m\]\h\[\e[0m\]"
PS1="$PS1] \[${UCyan}\]\W\[${Color_Off}\]$ "

# code review
CR="/homes/wit/code_review/current"
export R3HOME="/var/projects/${WEBROOT}/r3"
R3HOME="/var/projects/${WEBROOT}/r3"


# complex aliases
diff(){
diff "${@}" | colordiff.pl
}
svndiff(){
svn diff "${@}" | colordiff.pl
}
