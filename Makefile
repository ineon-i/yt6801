# SPDX-License-Identifier: GPL-2.0-only
################################################################################
#
# Copyright (c) 2023 Motorcomm, Inc.
# Motorcomm Confidential and Proprietary.
#
# This is Motorcomm NIC driver relevant files. Please don't copy, modify,
# distribute without commercial permission.
#
################################################################################

BASEDIR := /lib/modules/$(shell uname -r)
KERNELDIR ?= $(BASEDIR)/build
PWD :=$(shell pwd)

KERNEL_GCC_VERSION := $(shell cat /proc/version | sed -n 's/.*gcc version \([[:digit:]]\.[[:digit:]]\.[[:digit:]]\).*/\1/p')
CCVERSION = $(shell $(CC) -dumpversion)

KVER = $(shell uname -r)

all:
	make -C $(KERNEL_SRC) M=$(PWD) modules

clean:
	make -C $(KERNEL_SRC) M=$(PWD) clean

modules_install:
	make -C $(KERNEL_SRC) M=$(PWD) install
