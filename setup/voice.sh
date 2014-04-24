#!/bin/bash
export SRCD=/usr/local/src
mkdir -p $SRCD && cd $SRCD

wget http://downloads.sourceforge.net/project/cmusphinx/sphinxbase/0.8/sphinxbase-0.8.tar.gz

if [ -f sphinxbase-0.8.tar.gz ]
then
	tar zxvf sphinxbase-0.8.tar.gz
	cd sphinxbase-0.8 && ./configure --enable-fixed && make && make install
else
	echo "No sphinxbase-0.8.tar.gz! Run again maybe?"
fi

cd $SRCD
wget http://downloads.sourceforge.net/project/cmusphinx/pocketsphinx/0.8/pocketsphinx-0.8.tar.gz
if [ -f pocketsphinx-0.8.tar.gz ]
then
	tar zxvf pocketsphinx-0.8.tar.gz
	cd pocketsphinx-0.8 && ./configure && make && make install
fi

