ARCH ?= $(shell uname -m)

all:
ifeq ($(ARCH), $(filter $(ARCH), i386 i686 x86))
	@echo "32-bit x86 platform"
else ifeq ($(ARCH), x86_64)
	@echo "64-bit x86 platform"
else ifeq ($(ARCH), arm)
	@echo "32-bit ARM platform"
else ifeq ($(ARCH), $(filter $(ARCH), arm64 aarch64))
	@echo "64-bit ARM platform"
else ifeq ($(ARCH), mips)
	@echo "32-bit MIPS platform"
else ifeq ($(ARCH), ppc)
	@echo "32-bit PowerPC platform"
else
	@echo "unknown platform"
endif
	@echo

