
all: clean
	@echo "[1;32mDisplay makefile variables:[0m"
	make -s -f check.mk check -f Makefile.example
	@echo
	make -s -f check.mk SRC -f Makefile.example
	@echo
	@echo "[1;32mError if gcc command not found:[0m"
	-make -s -f check.mk -f Makefile.example CROSS=x86-
	@echo
#   Just print the command
	@echo "[1;32mJust print makefile commands:[0m"
	make -s -n -w -f Makefile.example
	@echo
#   No rule to make target 'test.c'
	@echo "[1;32mNo rule to make target 'test.c':[0m"
	-make -s -f Makefile.test
	@echo
#   Force make to stop
	@echo "[1;32mMake procedure stop at 'qux.c':[0m"
	-make -s -f Makefile.stop
	@echo

clean:
	make -s -f Makefile.example clean
	@echo

debug:
	make -s --debug=b -f Makefile.example
	@echo

.PHONY: clean
