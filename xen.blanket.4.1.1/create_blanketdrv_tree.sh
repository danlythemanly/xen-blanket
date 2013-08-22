mkdir ./linux-3.1.2/drivers/xen-blanket
mkdir ./linux-3.1.2/drivers/xen-blanket/xenbus
mkdir ./linux-3.1.2/drivers/xen-blanket/xendev

# Xenblanket Top-Level Sources, patched from original Linux Xen Platform Driver
cd ./linux-3.1.2/drivers/xen/
cp biomerge.c events.c features.c grant-table.c manage.c platform-pci.c ../xen-blanket/
cd ../../include/xen
cp events.h features.h grant_table.h xen-ops.h ../../drivers/xen-blanket/
cp ../../arch/x86/xen/platform-pci-unplug.c ../../drivers/xen-blanket/

# xenbus subdirectory
cd ../../drivers/xen/xenbus
cp xenbus_client.c xenbus_comms.c xenbus_comms.h xenbus_probe.c xenbus_probe.h xenbus_probe_backend.c xenbus_probe_frontend.c xenbus_xs.c ../../xen-blanket/xenbus/
cp ../../../include/xen/xenbus.h ../../xen-blanket/xenbus/

# xendev subdirectory
cd ../../xen-blanket/xendev
cp ../../net/xen-netfront.c ./
cp ../../block/xen-blkfront.c ./

