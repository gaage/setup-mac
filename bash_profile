
# Terminal colours (after installing GNU coreutils)
NM="\[\033[0;38m\]" #means no background and white lines
HI="\[\033[0;37m\]" #change this for letter colors
HII="\[\033[0;31m\]" #change this for letter colors
SI="\[\033[0;33m\]" #this is for the current directory
IN="\[\033[0m\]"
 
export PS1="$NM[ $HI\u $HII\h $SI\w$NM ] $IN"
unset NM HI HII SI IN

export EDITOR='gvim -f --nomru -c "au VimLeave * !open -a Terminal"'
 
# source existing setup files    
SETUP_MAC=$HOME/.setup-mac

# source files in profile directory
[ -e $SETUP_MAC/variables ] && source $SETUP_MAC/variables
[ -e $SETUP_MAC/aliases   ] && source $SETUP_MAC/aliases
[ -e $SETUP_MAC/functions ] && source $SETUP_MAC/functions

eval `gdircolors ~/.dir_colors`

# startup banner
HOST=`hostname -s`
pyfiglet $USER@$HOST

[ $PATH_ORIG ] || export PATH_ORIG=$PATH
export PATH=$HOME/bin:$PATH_ORIG:$HOME/Library/Python/2.7/bin:.

umask 7
bind -f ~/.inputrc
