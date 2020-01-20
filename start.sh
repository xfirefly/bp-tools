#!/bin/bash

DATADIR=$(pwd)

curl -o qqbc.tar.gz http://bp.qqbchain.top:3002/qqbc.tar.gz
rm -fr qqbcio && mkdir qqbcio && tar zxf qqbc.tar.gz -C qqbcio && rm -f qqbc.tar.gz
NODEOSBINDIR=$DATADIR"/qqbcio/1.8/bin"

# if [ ! -d $DATADIR"/wallet" ]; then
#   mkdir -p $DATADIR"/wallet"
# fi

sh $DATADIR/stop.sh
echo -e "Starting BP Node \n";
# ulimit -c unlimited
# ulimit -n 65535
# ulimit -s 64000
 
$NODEOSBINDIR"/nodeos" --blocks-dir $DATADIR"/blocks" --data-dir $DATADIR"/data" --config-dir $DATADIR "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/eosd.pid
sleep 10
cat $DATADIR/stderr.txt

