MODULE_NAME = my_example
KERNEL_DIR = /lib/modules/$(shell uname -r)/build
BUILD_DIR = $(shell pwd)
ARCH = x86
CROSS =


###########
#  Source
###########

SRC += main.c


###########
#  CFLAGS
###########

EXTRA_CFLAGS += -O2


###########
#  Build
###########

ifneq ($(KERNELRELEASE),)

OBJS  := $(SRC:.c=.o)
$(MODULE_NAME)-objs := $(OBJS)

obj-m := $(MODULE_NAME).o

else

all:
	$(MAKE) -C $(KERNEL_DIR) M=$(BUILD_DIR) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS) modules

clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(BUILD_DIR) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS) clean

check:
	@echo "MODULE_NAME = $(MODULE_NAME)"
	@echo "KERNEL_DIR = $(KERNEL_DIR)"
	@echo "BUILD_DIR = $(BUILD_DIR)"
	@echo "ARCH = $(ARCH)"
	@echo "CC = $(CROSS)gcc"
	@echo "EXTRA_CFLAGS ="
	@echo "$(EXTRA_CFLAGS)" | tr -s " " "\n"
	@echo

endif

.PHONY: all clean check
