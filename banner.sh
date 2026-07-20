#!/data/data/com.termux/files/usr/bin/bash

RED='\e[1;31m'
DARKRED='\e[0;31m'
WHITE='\e[1;37m'
RESET='\e[0m'

clear

# اجرای لودینگ
if [ -f ~/.config/namoskhar/loading.sh ]; then
bash ~/.config/namoskhar/loading.sh
fi

# =========================
# System Information
# =========================

TIME=$(date +"%H:%M:%S")
DATE=$(date +"%d-%m-%Y")

ANDROID=$(getprop ro.build.version.release)

USER_NAME=$(whoami)

IP=$(ip route get 1.1.1.1 2>/dev/null | awk '{print $7; exit}')

if [ -z "$IP" ]; then
IP="Offline"
fi

BATTERY=$(termux-battery-status 2>/dev/null | grep percentage | awk '{print $2}' | tr -d ',')
[ -z "$BATTERY" ] && BATTERY="N/A"

STORAGE=$(df -h /data | awk 'NR==2 {print $4}')

RAM=$(free -h | awk '/Mem:/ {print $7}')

# =========================
# Logo
# =========================

echo -e "$RED"

cat << "EOF"

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ ███╗   ██╗ █████╗ ███╗   ███╗ ██████╗ ███████╗██╗  ██╗ █████╗ ██████╗       ║
║ ████╗  ██║██╔══██╗████╗ ████║██╔═══██╗██╔════╝██║ ██╔╝██╔══██╗██╔══██╗      ║
║ ██╔██╗ ██║███████║██╔████╔██║██║   ██║███████╗█████╔╝ ███████║██████╔╝      ║
║ ██║╚██╗██║██╔══██║██║╚██╔╝██║██║   ██║╚════██║██╔═██╗ ██╔══██║██╔══██╗      ║
║ ██║ ╚████║██║  ██║██║ ╚═╝ ██║╚██████╔╝███████║██║  ██╗██║  ██║██║  ██║      ║
║ ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝      ║
║                                                                              ║
║                        N A M O S K H A R   B O O T                           ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

EOF

echo -e "$RESET"

# =========================
# Information Panel
# =========================

echo -e "${WHITE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"

echo -e "${RED}User      ${WHITE}: ${USER_NAME}"
echo -e "${RED}Android   ${WHITE}: ${ANDROID}"
echo -e "${RED}Battery   ${WHITE}: ${BATTERY}%"
echo -e "${RED}RAM Free  ${WHITE}: ${RAM}"
echo -e "${RED}Storage   ${WHITE}: ${STORAGE}"
echo -e "${RED}IP        ${WHITE}: ${IP}"
echo -e "${RED}Date      ${WHITE}: ${DATE}"
echo -e "${RED}Time      ${WHITE}: ${TIME}"

echo -e "${WHITE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"

echo ""
echo -e "${RED}[ SYSTEM READY ]${RESET}"
echo ""
