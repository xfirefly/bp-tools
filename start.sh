#!/bin/bash

DATADIR=$(pwd)

curl -o qqbc.tar.bz2 http://bp.qqbchain.top/qqbc.tar.bz2
rm -fr qqbcio && mkdir qqbcio && tar jxf qqbc.tar.bz2 -C qqbcio && rm -f qqbc.tar.bz2
NODEOSBINDIR=$DATADIR"/qqbcio/bin"

# if [ ! -d $DATADIR"/wallet" ]; then
#   mkdir -p $DATADIR"/wallet"
# fi

sh $DATADIR/stop.sh
echo -e "Starting BP Node \n";
ulimit -c 0
ulimit -n 65535
ulimit -s 64000
 
$NODEOSBINDIR"/nodeos" --blocks-dir $DATADIR"/blocks" --data-dir $DATADIR"/data" --config-dir $DATADIR "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/eosd.pid
sleep 10
cat $DATADIR/stderr.txt

