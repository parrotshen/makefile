
all:
	make -n -w -f Makefile.hello
	@echo
	make -s -f Makefile.hello -f check.mk check
	@echo
	make -s -f Makefile.hello -f check.mk SRC
	@echo

clean:
	make -s -f Makefile.hello clean

