#!/data/data/com.termux/files/usr/bin/bash

clear

RED='\033[1;31m'
GREEN='\033[1;32m'
WHITE='\033[1;37m'
NC='\033[0m'

echo -e "${RED}"
echo "========================================="
echo "       NAMOSKHAR INSTALLER"
echo "========================================="
echo -e "${NC}"

echo -e "${GREEN}[+] Updating Packages...${NC}"
pkg update -y && pkg upgrade -y

echo -e "${GREEN}[+] Installing Required Packages...${NC}"
pkg install -y git bash curl figlet toilet ruby ncurses termux-api

echo -e "${GREEN}[+] Creating Directories...${NC}"
mkdir -p ~/.termux
mkdir -p ~/.config/namoskhar

echo -e "${GREEN}[+] Installing Theme Files...${NC}"

cp .bashrc ~/.bashrc
cp -r .termux/* ~/.termux/
cp banner.sh ~/.config/namoskhar/
cp loading.sh ~/.config/namoskhar/

chmod +x ~/.config/namoskhar/banner.sh
chmod +x ~/.config/namoskhar/loading.sh

termux-reload-settings

clear

echo -e "${RED}"
echo "========================================="
echo "      INSTALLATION COMPLETED"
echo "========================================="
echo -e "${NC}"

echo ""
echo "Restart Termux."
echo ""
echo "Enjoy NAMOSKHAR Theme :)"
