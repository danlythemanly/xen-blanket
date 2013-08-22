all: Linux Xen
install: Linux_install Xen_install

Linux:
	wget xcloud.cs.cornell.edu/code/linux-3.1.2.tar.gz
	# Use official source if the above link is slow
	# wget http://www.kernel.org/pub/linux/kernel/v3.x/linux-3.1.2.tar.gz
	tar -xvf linux-3.1.2.tar.gz
	sh ./create_blanketdrv_tree.sh
	cd ./linux-3.1.2; \
	patch -p1 < ../linux-xenblanket.patch; \
	make defconfig; \
	cp ../recommend_config ./.config; \
	make all; \

Xen:
	wget xcloud.cs.cornell.edu/code/xen-4.1.1.tar.gz
	# Use official source if the above link is slow
	# wget http://bits.xensource.com/oss-xen/release/4.1.1/xen-4.1.1.tar.gz
	tar -xvf xen-4.1.1.tar.gz
	cd ./xen-4.1.1/xen; \
	patch -p2 < ../../xen-xenblanket.patch; \
	cd ..; \
	make world; \

Linux_install:
	cd ./linux-3.1.2; \
	make modules_install ;\
	make install

Xen_install:
	cd ./xen-4.1.1; \
	make install

clean:
	rm -rf ./xen-4.1.1 ./linux-3.1.2

mrproper:
	rm -rf *.tar.gz
