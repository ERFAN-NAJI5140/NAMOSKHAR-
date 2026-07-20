#########################################
# NAMOSKHAR Theme
# Author : ArMiN
#########################################

# رنگ‌ها
RED="\[\e[1;31m\]"
DARK="\[\e[0;31m\]"
WHITE="\[\e[1;37m\]"
GREEN="\[\e[1;32m\]"
BLUE="\[\e[1;34m\]"
RESET="\[\e[0m\]"

# جلوگیری از اجرای چندباره
if [[ -z "$NAMOSKHAR_THEME" ]]; then
    export NAMOSKHAR_THEME=1

    if [ -f ~/.config/namoskhar/loading.sh ]; then
        bash ~/.config/namoskhar/loading.sh
    fi

    if [ -f ~/.config/namoskhar/banner.sh ]; then
        bash ~/.config/namoskhar/banner.sh
    fi
fi

# تاریخچه
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

# رنگی شدن ls
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF'

# میانبرها
alias cls='clear'
alias c='clear'
alias update='pkg update && pkg upgrade -y'
alias install='pkg install'
alias remove='pkg uninstall'
alias grep='grep --color=auto'

# اطلاعات سیستم
alias myip='curl ifconfig.me'
alias ports='netstat -tulnp'
alias mem='free -h'
alias disk='df -h'

# Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'

# Prompt اختصاصی

PS1="\n${RED}[ArMiN@termux]${RESET}\n${WHITE}-->>> ${RESET}"

# عنوان پنجره
echo -ne "\033]0;NAMOSKHAR\a"

# خوش‌آمدگویی
echo -e "${GREEN}Welcome back ArMiN.${RESET}"
