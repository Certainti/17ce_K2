#!/bin/sh
echo "begin install k2 17ce"
echo "警告"
echo "警告"
echo "警告"
echo "本脚本只适用于Padavan固件安装17ce"
echo "本脚本只适用于Padavan固件安装17ce"
echo "本脚本只适用于Padavan固件安装17ce"
echo "本程序仅仅是17ce讨论群群友研究使用不懂的请 ctrl +c exit"
echo "本程序仅仅是17ce讨论群群友研究使用不懂的请 ctrl +c exit"
echo "本程序仅仅是17ce讨论群群友研究使用不懂的请 ctrl +c exit"
echo "执行完毕请记得及时替换自己的17测ID"
echo "执行完毕请记得及时替换自己的17测ID"
echo "执行完毕请记得及时替换自己的17测ID"
echo "版权提示" 
echo "版权提示" 
echo "版权提示" 
echo "By Dandan! Certain体 update! And use myself!"
echo "By Dandan! Certain体 update! And use myself!"
echo "By Dandan! Certain体 update! And use myself!"
echo "有需要源代码的请移步https://github.com/Certainti/17ce_K2"
echo "有需要源代码的请移步https://github.com/Certainti/17ce_K2"
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
echo "Certain体 update! And use myself!"
rm -rf /etc/storage/17ce
rm -rf /tmp/17ce
rm  -rf 17ce*
cd /tmp
wget -O 17ce_padavan.sh https://github.com/Certainti/17ce_K2/blob/master17ce_padavan.sh
chmod +x  /tmp/17ce_padavan.sh
mkdir /etc/storage/17ce
cp install_padavan.sh /etc/storage/17ce/install_padavan.sh
chmod +x  /etc/storage/17ce/install_padavan.sh
if grep -wq "install_padavan.sh" /etc/storage/post_wan_script.sh; then
  /tmp/17ce_padavan.sh certainti@outlook.com
else
  echo "/etc/storage/17ce/install_padavan.sh  certainti@outlook.com">>/etc/storage/post_wan_script.sh
  /tmp/17ce_padavan.sh certainti@outlook.com
fi
