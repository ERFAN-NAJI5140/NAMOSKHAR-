#!/data/data/com.termux/files/usr/bin/bash

# ==========================================
# NAMOSKHAR Theme Installer
# Version : 1.0
# Author  : ArMiN
# ==========================================

clear

RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
WHITE="\e[1;37m"
RESET="\e[0m"

banner() {

echo -e "$RED"

cat << "EOF"

███╗   ██╗ █████╗ ███╗   ███╗ ██████╗ ███████╗██╗  ██╗ █████╗ ██████╗
████╗  ██║██╔══██╗████╗ ████║██╔═══██╗██╔════╝██║ ██╔╝██╔══██╗██╔══██╗
██╔██╗ ██║███████║██╔████╔██║██║   ██║███████╗█████╔╝ ███████║██████╔╝
██║╚██╗██║██╔══██║██║╚██╔╝██║██║   ██║╚════██║██╔═██╗ ██╔══██║██╔══██╗
██║ ╚████║██║  ██║██║ ╚═╝ ██║╚██████╔╝███████║██║  ██╗██║  ██║██║  ██║
╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝

EOF

echo -e "$RESET"

}

loading(){

printf "${RED}Installing"
for i in {1..6}
do
printf "."
sleep .3
done

echo ""
}

success(){

echo ""
echo -e "${GREEN}=========================================="
echo " Installation Finished Successfully"
echo "=========================================="
echo -e "${RESET}"

}

banner
loading

echo -e "${YELLOW}[1/8] Updating packages...${RESET}"
pkg update -y
pkg upgrade -y

echo -e "${YELLOW}[2/8] Installing required packages...${RESET}"

pkg install -y \
git \
curl \
wget \
bash \
figlet \
toilet \
ruby \
lolcat \
termux-api \
ncurses \
procps

echo -e "${YELLOW}[3/8] Creating directories...${RESET}"

mkdir -p ~/.config/namoskhar
mkdir -p ~/.config/namoskhar/assets
mkdir -p ~/.termux

echo -e "${YELLOW}[4/8] Copying files...${RESET}"

cp banner.sh ~/.config/namoskhar/
cp loading.sh ~/.config/namoskhar/

cp assets/logo.txt ~/.config/namoskhar/assets/

cp .bashrc ~/.bashrc

cp .termux/colors.properties ~/.termux/colors.properties

if [ -f ".termux/termux.properties" ]; then
cp .termux/termux.properties ~/.termux/
fi

echo -e "${YELLOW}[5/8] Setting permissions...${RESET}"

chmod +x ~/.config/namoskhar/banner.sh
chmod +x ~/.config/namoskhar/loading.sh

echo -e "${YELLOW}[6/8] Reloading Termux...${RESET}"

termux-reload-settings 2>/dev/null

echo -e "${YELLOW}[7/8] Cleaning cache...${RESET}"

pkg autoclean -y

echo -e "${YELLOW}[8/8] Done.${RESET}"

success

echo ""

echo -e "${WHITE}Restart Termux to load NAMOSKHAR Theme.${RESET}"

echo ""

echo -e "${RED}GitHub Project Ready ✔${RESET}"
