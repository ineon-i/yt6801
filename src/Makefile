yt6801-objs :=  fuxi-gmac-common.o fuxi-gmac-desc.o fuxi-gmac-ethtool.o fuxi-gmac-hw.o fuxi-gmac-net.o fuxi-gmac-pci.o fuxi-gmac-phy.o fuxi-efuse.o fuxi-dbg.o fuxi-gmac-debugfs.o

obj-m += yt6801.o

modules:
	make -C $(KERNEL_SRC) M=$(PWD) modules

all:
	make -C $(KERNEL_SRC) M=$(PWD) modules

clean:
	make -C $(KERNEL_SRC) M=$(PWD) clean

modules_install:
	make -C $(KERNEL_SRC) M=$(PWD) modules_install

