all: err

%:
	@echo "[1;33m$*[0m = $($*)"

check:
	@echo "[1;36mCC[0m = $(CC)"
	@echo "[1;36mCFLAGS[0m ="
	@echo "$(CFLAGS)" | tr -s " " "\n"
	@echo "[1;36mLDFLAGS[0m ="
	@echo "$(LDFLAGS)" | tr -s " " "\n"


ERR = $(if $(shell which $(CC) 2> /dev/null), \
           , \
           $(error Can not find $(CC) !))

err: ; $(ERR)


.PHONY: err check
