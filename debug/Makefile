
all: clean
	make -s -f Makefile.hello -f check.mk check
	@echo
	make -s -f Makefile.hello -f check.mk SRC
	@echo
#   just print the command
	make -n -w -f Makefile.hello
	@echo
#   force make to stop
	make -s -f Makefile.hello STOP=bar.c
	@echo

clean:
	make -s -f Makefile.hello clean
	@echo

debug:
	make --debug=b -f Makefile.hello
	@echo

.PHONY: clean
