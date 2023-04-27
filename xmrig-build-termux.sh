clear
echo -e "\e[32m=================================================="
echo -e "==================================================\e[39m"
echo -e "\e[33m XMRig-ARM Compiler Script \e[39m"
echo
echo -e "\e[33m by python-jpg\e[39m"
echo -e "\e[32m=================================================="
echo -e "==================================================\e[39m"
echo ""
echo -e  "\e[33m"

echo "Updating Termux"
echo ""
pkg install update && upgrade
echo ""
echo ""

echo "installing git"
echo ""
apt install git
echo ""
echo ""

echo "installing wget"
echo ""
apt install wget
echo ""
echo ""

echo "installing proot"
echo ""
apt install proot
echo ""
echo ""

clear

echo "setting up termux-storage\nPlease click 'allow' an any popups!"
termux-setup-storage
echo ""
echo ""

echo "downloading 'termux-ubuntu' from https://github.com/Neo-Oli/termux-ubuntu"
echo ""
git clone https://github.com/Neo-Oli/termux-ubuntu
echo ""
echo ""

cd termux-ubuntu;chmod +x ubuntu.sh
cd termux-ubuntu;sh ubuntu.sh
clear;echo "RUN the command 'apt update;apt upgrade;apt install git;apt install wget;apt install proot;apt-get install git-build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev;git clone git clone https://github.com/xmrig/xmrig;cd xmrig;mkdir build;cd build;cmake -DWITH_HWLOC=OFF ..;build' [With no quotes!]"
cd termux-ubuntu;./start-ubuntu.sh
