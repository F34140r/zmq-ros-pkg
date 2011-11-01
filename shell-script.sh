#/bin/bash
if [ ! -f ./install/lib/libzmq.so ] ; then
	wget -nc --tries=10 http://download.zeromq.org/zeromq-2.1.10.tar.gz
	tar -zxf zeromq-2.1.10.tar.gz
	install_path=`pwd`/install
	cd zeromq-2.1.10
	./configure --prefix=$install_path
	make 
	make install
fi
