#!/bin/sh
echo "begin install k2 17ce"
if [ $# == 1 ]; then
	echo "17CE user name -->$1"
	echo "if the user name is error ,ctrl +c exit"
	sleep 3
else 
	echo "please use the cmd-->"
	echo "     ./install.sh   xxx@xxx.com"
	exit 1
fi
echo 
echo 
echo "By Dandan!"
echo "mjyhj update!And use myself!"
rm -rf /etc/storage/17ce
rm -rf /tmp/17ce
rm  -rf 17ce*
cd /tmp
wget -O 17ce.t https://git.oschina.net/opensuse/K2_17ce/raw/master/17ce.sh
sed   "s/USER_NAME/$1/g" 17ce.t > 17ce.sh
mkdir /etc/storage/17ce
cp 17ce.sh /etc/storage/17ce/17ce.sh
chmod +x  /etc/storage/17ce/17ce.sh
if grep -wq "17ce.sh" /etc/storage/post_wan_script.sh; then
  /etc/storage/17ce/17ce.sh
else
  echo "/etc/storage/17ce/17ce.sh">>/etc/storage/post_wan_script.sh
  /etc/storage/17ce/17ce.sh
fi