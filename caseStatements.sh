#!/usr/bin/bash


while :;do 
echo "What is your Favourite Linux Distribution ??"
echo "1. Arch"
echo "2. Fedora"
echo "3. Ubuntu"
echo "4. Mint"
echo "5. Centos"
echo "6. Exit"
read -p "Enter your Choice : " distro
  case ${distro} in 
    1) echo "Arch is a rolling base and best. I use arch btw";;
    2) echo "Fedora is Shit";;
    3) echo "Ubuntu is Love !! I use Uwubuntu btw";;
    4) echo "Mint is popular desktop choice my IT ";;
    5) echo "CenOs idk anything about it shit it";;
    6) exit 0;;
    *) echo "Yoo you use windows???? L LOSER"
  esac
done

echo "Thank You for using my Script"
