~/.config/namoskhar/loading.sh
#!/data/data/com.termux/files/usr/bin/bash

RED="\e[1;31m"
DARK="\e[0;31m"
WHITE="\e[1;37m"
RESET="\e[0m"

clear

# اطلاعات سیستم
TIME=$(date +"%H:%M:%S")
DATE=$(date +"%Y-%m-%d")
BATTERY=$(termux-battery-status 2>/dev/null | grep percentage | cut -d':' -f2 | tr -d ' ,"')
ANDROID=$(getprop ro.build.version.release)
IP=$(ip route get 1.1.1.1 2>/dev/null | awk '{print $7;exit}')

echo -e "${RED}"
echo "╔══════════════════════════════════════════════════════════════════════╗"
echo "║                                                                  ║"
echo "║ ███╗   ██╗ █████╗ ███╗   ███╗ ██████╗ ███████╗██╗  ██╗ █████╗ ██████╗║"
echo "║ ████╗  ██║██╔══██╗████╗ ████║██╔═══██╗██╔════╝██║ ██╔╝██╔══██╗██╔══██╗║"
echo "║ ██╔██╗ ██║███████║██╔████╔██║██║   ██║███████╗█████╔╝ ███████║██████╔╝║"
echo "║ ██║╚██╗██║██╔══██║██║╚██╔╝██║██║   ██║╚════██║██╔═██╗ ██╔══██║██╔══██╗║"
echo "║ ██║ ╚████║██║  ██║██║ ╚═╝ ██║╚██████╔╝███████║██║  ██╗██║  ██║██║  ██║║"
echo "║ ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝║"
echo "║                                                                  ║"
echo "║                     Boot Script v1.0                             ║"
echo "╚══════════════════════════════════════════════════════════════════════╝"
echo -e "${RESET}"

echo ""

echo -e "${WHITE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo -e "${RED} Android ${WHITE}: ${ANDROID}"
echo -e "${RED} Battery ${WHITE}: ${BATTERY}%"
echo -e "${RED} Date    ${WHITE}: ${DATE}"
echo -e "${RED} Time    ${WHITE}: ${TIME}"
echo -e "${RED} IP      ${WHITE}: ${IP}"
echo -e "${WHITE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"

echo ""
