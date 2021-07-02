
all: clean
	@echo "[1;32mDisplay makefile variables:[0m"
	make -s -f Makefile.hello -f check.mk check
	@echo
	make -s -f Makefile.hello -f check.mk SRC
	@echo
#   Just print the command
	@echo "[1;32mJust print makefile commands:[0m"
	make -n -w -f Makefile.hello
	@echo
#   No rule to make target 'error.c'
	@echo "[1;32mNo rule to make target 'error.c':[0m"
	-make -f Makefile.error
	@echo
#   Force make to stop
	@echo "[1;32mMake procedure stop at 'bar.c':[0m"
	-make -s -f Makefile.stop STOP=bar.c
	@echo

clean:
	make -s -f Makefile.hello clean
	@echo

debug:
	make --debug=b -f Makefile.hello
	@echo

.PHONY: clean
