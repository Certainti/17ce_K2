#!/bin/sh
# Copyight (C) 2017  www.17ce.com
START=99
CDN_BASE="https://git.oschina.net/opensuse/K2_17ce/raw/master/"
UPDATE_URL="https://git.oschina.net/opensuse/K2_17ce/raw/master/17ce_version.php"
TEMP_FILE="/tmp/update.txt"
UPDATE_FILE="/tmp/update.tgz"
WORK_DIR="/tmp/17ce"
SAVE_DIR="/etc/storage/17ce"
wait_for_network(){
        echo "~~~~~~"
        sleep 2
        echo "~~~~~~"
}
check_update()
{
        wget -T 30 $UPDATE_URL -O  $TEMP_FILE
        TURL=`cat $TEMP_FILE|awk '{print $2}'`
        echo "will download update file -> $TURL"
        wget -T 60 $TURL  -O $UPDATE_FILE
}
wget_install(){
	wget -T 60 -O $1  $2
	chmod +x $1
}
init_files()
{
#       check_update
        killall -9 17ce_v3
        rm -rf $WORK_DIR
        mkdir -p $WORK_DIR
        mkdir -p $SAVE_DIR
	cd $WORK_DIR
	wget_install 17ce_v3      $CDN_BASE/bin/17ce_v3
	wget_install conf.json    $CDN_BASE/bin/conf.json
	wget_install libgcc_s.so.1   $CDN_BASE/lib/libgcc_s.so.1
	wget_install libcurl.so.4   $CDN_BASE/lib/libcurl.so.4
	wget_install libstdc++.so.6   $CDN_BASE/lib/libstdc++.so.6.0.21
	wget_install libpolarssl.so.7    $CDN_BASE/lib/libpolarssl.so.1.3.9
	ln -sf $WORK_DIR/libpolarssl.so.7  libmbedtls.so.9 
	ln -sf /lib/libc.so.0  libc.so
}

start()
{
        echo "begin start 17ce"
	wait_for_network
        init_files
        echo "create link"
        export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$WORK_DIR
        $WORK_DIR/17ce_v3 -u USER_NAME
        echo "17ce Client has stated."
}

stop()
{
        killall -9 17ce_v3
        sleep 1
        echo "17ce Client has stoped."
}

start  USER_NAME
