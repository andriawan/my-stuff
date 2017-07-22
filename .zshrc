# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# custom zsh apperance

#-----------------------------------------------------------------
#	COSTUM ALIASES
#-----------------------------------------------------------------

# some more ls aliases
alias ll='ls -alF'
alias ls='ls -alhi --color=yes'
alias la='ls -A'
alias l='ls -CF'
alias lgrep='ls | grep'
alias susp='sudo systemctl suspend'

# launching apps via mimeopen
alias launch='mimeopen'

# setting brightness
alias bright_100='echo 100 | sudo tee /sys/class/backlight/radeon_bl0/brightness'
alias bright_200='echo 200 | sudo tee /sys/class/backlight/radeon_bl0/brightness'
# launching genymotion
alias geny_start='/home/andriawan/Downloads/genymotion/player --vm-name appTest'

# rsync
alias my_rsync='rsync -r -t -v --progress -s'

# resolvf dns google
alias res8='sudo sh -c "echo nameserver 8.8.8.8>>/etc/resolv.conf"'

# steam
alias steam_run='/home/andriawan/Desktop/steam.sh'

# custom aliases

alias andro='bash /media/10g/android-studio/bin/studio.sh'
alias hm='cd ~'
alias cls='clear'
alias syn='rsync -av -P'
alias 10g='cd /media/10g'
alias ldd='cd /media/D'
alias lde='cd /media/E'
alias sdk='bash /media/D/Sdk/tools/android'

#my Rclone. sync google drive
alias sync_porto23='rclone sync /home/andriawan/Desktop/My\ Portofolio andriawan23:My_Portofolio'
alias ls23='rclone lsd andriawan23:'
alias ls2014='rclone lsd andriawan2014:'
alias sync_muham='rclone sync /media/E/Muhammad\ Irwan\ Andriawan andriawan23:Local_Disk_E/Muhammad\ Irwan\ Andriawan'
alias sync_ebook='rclone copy /media/E/Books\ Collection/ andriawan23:Local_Disk_E/books'
alias sync_porto_data='rclone sync /home/andriawan/Desktop/My\ Portofolio data1:My_Portofolio'

#baobab
alias diskspace='sudo baobab'

#start xampp/lampp
alias xampp_start='sudo /opt/lampp/xampp start'
alias xampp_stop='sudo /opt/lampp/xampp stop'
alias xampp_security='sudo /opt/lampp/xampp security'
alias web_development='sudo systemctl start mysql.service apache2.service'
alias web_development_stop='sudo systemctl stop mysql.service apache2.service'
alias public_mode='sudo systemctl stop mysql.service apache2.service ssh.service smbd.service vsftpd.service'
alias personal_mode='sudo systemctl start ssh.service smbd.service vsftpd.service'
#arduino
alias arduino='/media/10g/arduino-1.8.2/arduino'
#wps
alias doc='wps'
alias ppt='wpp'
alias xls='et'

#libre office
alias writer='/opt/libreoffice5.1/program/swriter'
alias calc='/opt/libreoffice5.1/program/scalc'
alias impress='/opt/libreoffice5.1/program/simpress'

#multimedia
alias mus='audacious'
alias vid='totem'

#arch-wiki
alias arch='lynx /usr/share/doc/arch-wiki/html/index.html'

#create_ap
alias wif='sudo andriawan-network-wifi.sh'

#update upgrade install repo
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias install='sudo apt-get install'

#init.d
alias netres='sudo /etc/init.d/network-manager restart'

#clear pagecache, dentries anda inode RAM optimizer
#for production, just clear pagecache
alias clear_ram_production='sudo sh -c "sync && echo 1 > /proc/sys/vm/drop_caches"'
#for personal usage (take 2 or 3)
alias clear_ram='sudo sh -c "sync && echo 3 > /proc/sys/vm/drop_caches"'

#edit bashrc
alias ebrc='vim /home/andriawan/.bashrc'
alias rebrc='source /home/andriawan/.bashrc'

#diskusage
alias usage='du -chsx * | sort -rh | head'
alias ducks='du -cks * | sort -rn | head'

#find files
alias bigfiles='sudo find . -printf "%s %p\n"| sort -nr | head -10'

#wine
alias kamus='wine /home/andriawan/.wine/drive_c/Program\ Files/Kamus2/Kamus2.exe'

#WLAN SCAN
alias wscan='sudo iwlist wlan0 scan'

#panel
alias panel='xfce4-panel'

#volume
alias vol='xfce4-volumed'
alias where='whereis'

#run wireshark safely
alias shark='sudo -g wireshark wireshark'

#dmesg
alias msg='dmesg | grep'

reset="\e[0m"
bold="\e[1m"
underline="\e[4m"

red="\e[31m"
black="\e[30m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"
white="\e[97m"


# BG
green_bg="\e[42m"
red_bg="\e[41m"
white_bg="\e[107m"

export PATH="$PATH:$HOME/.config/composer/vendor/bin/"

# add radare2 path to env
export PATH="$PATH:$HOME/bin"

export NVM_DIR="/home/andriawan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# From Arch Wiki
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

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

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[0;105m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White

datex=$(date '+%A, %d %B %Y')

