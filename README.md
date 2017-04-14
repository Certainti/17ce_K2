
本教材仅仅是针对爱好学习搞机、刷机、折腾的人准备的，本人不对产生的任何直接责任，连带责任负责，仅仅是分享出来大家学习研究，也算是本人搞基的一个学习记录，仅供研究使用。版权属于（godvmxi\dandan），为了便于本人刷机在mjyhj基础上修改而来！

适用于如下路由器：MT7620A/N MT7621_7602_7612_系列路由，优酷路由宝/小度路由/极路由-极壹S/如意云ry1/中兴ZTEQ7/斐讯FIR300M/极路由-极壹S（HC5661A）/极路由-极贰（HC5761）/极路由-极三（HC5861）/水牛/联想Y1（newifi mini）/小米Mini/联想Y1S（newifi）/BUFFALO-WHR-300HP2/斐讯PSG712/斐讯PSG1208//乐携WT3020迷你无线路由器/5K无线路由器/联想newif2(D1)/优酷路由宝L2/华硕RT-N56UB1-RE6500-64M/RT-AC51U、RT-N56U、RT-N65U	RT-AC51U、RT-N56U、RT-N65U/目前斐讯K1/K2联想的Newifi。

原则上只要是刷了Padavan固件的都支持，后期不定期优化。

ssh刷入命令：
```
cd /tmp 
rm -rf install_padavan.sh 
wget -O install_padavan.sh https://git.oschina.net/opensuse/K2_17ce/raw/master/install_padavan.sh 
chmod +x install_padavan.sh 
./install_padavan.sh XXX@qq.com  

最后这个XXX@qq.com是你在17CE注册的账号（一般是邮箱地址）
```

以上路由器均可以用恩山大神的breed刷入第三方固件，具体刷入breed刷机请移步恩山 Breed， Bootloader 贴，直接刷老毛子Padavan固件请移步到：恩山Padavan固件专区。

刷入教程在：https://zhuanlan.zhihu.com/p/26323358  仅供学习研究，希望大家复制代码到自己的仓库，修改成自己的ID，一键安装！