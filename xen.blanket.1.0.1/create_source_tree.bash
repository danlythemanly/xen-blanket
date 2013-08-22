#!/bin/bash

tar -xvzf kernel-2.6.18.tar.gz
mkdir -p kernel-2.6.18/blanket_drivers/xen
mkdir -p kernel-2.6.18/blanket_drivers/kvm

cp kernel-2.6.18/linux-2.6.18.x86_64/drivers/xen/blkfront/blkfront.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xen/blkfront/block.h \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xen/blkfront/vbd.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xen/core/gnttab.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xen/core/reboot.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xen/netfront/netfront.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xen/xenbus/xenbus_client.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xen/xenbus/xenbus_comms.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xen/xenbus/xenbus_probe.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xen/xenbus/xenbus_xs.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xenpv_hvm/platform-pci/evtchn.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xenpv_hvm/platform-pci/machine_reboot.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xenpv_hvm/platform-pci/panic-handler.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/xenpv_hvm/platform-pci/platform-pci.c \
   kernel-2.6.18/blanket_drivers/xen/

cp kernel-2.6.18/linux-2.6.18.x86_64/drivers/block/virtio_blk.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/net/virtio_net.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/virtio/virtio.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/virtio/virtio_balloon.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/virtio/virtio_pci.c \
   kernel-2.6.18/linux-2.6.18.x86_64/drivers/virtio/virtio_ring.c \
   kernel-2.6.18/blanket_drivers/kvm/

cp xen_blanket/Makefile.xen_blanket kernel-2.6.18/Makefile

patch -p1 < xen_blanket/blanket.patch
patch -p1 < xen_blanket/dom0_32bit_bugs_internet.patch
patch -p1 < xen_blanket/dom0_32bit_bugs_mine.patch
patch -p1 < xen_blanket/blanket_drivers_xen.patch
patch -p1 < xen_blanket/blanket_drivers_kvm.patch
patch -p1 < xen_blanket/linux_makefile.patch
