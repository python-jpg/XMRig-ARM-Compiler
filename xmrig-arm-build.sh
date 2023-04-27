#!/bin/bash
FILE="/tmp/out.$$"
GREP="/bin/grep"
if [ "$(id -u)" != "0" ]; then
   echo "$(tput setaf 1)This script must be run as root" 1>&2
   exit 1
fi 
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

echo "installing git"
echo ""
apt-get install git
echo ""
echo ""

echo "installing build-essential"
echo ""
apt-get install build-essential
echo ""
echo ""

echo "installing cmake"
echo ""
apt-get install cmake
echo ""
echo ""

echo "installing libuv1-dev"
echo ""
apt-get install libuv1-dev
echo ""
echo ""

echo "installing libssl-dev"
echo ""
apt-get install libssl-dev
echo ""
echo ""

echo "installing libhwloc-dev"
echo ""
apt-get install libhwloc-dev
echo ""
echo ""

echo "downloading xmrig.git from https://github.com/xmrig/xmrig.git"
echo ""
git clone https://github.com/xmrig/xmrig.git
echo ""
echo ""

echo "making xmrig/build directory"
mkdir xmrig/build
echo ""
echo ""

echo "building xmrig using cmake"
echo ""
cd xmrig/build;cmake ..
cd xmrig/build;make -j$(nproc)

clear

echo "xmrig installed successfully!"

