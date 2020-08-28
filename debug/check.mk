all: check

%:
	@echo "[1;33m$*[0m = $($*)"

check:
	@echo "[1;36mCC[0m = $(CROSS)$(CC)"
	@echo "[1;36mCFLAGS[0m ="
	@echo "$(CFLAGS)" | tr -s " " "\n"
	@echo "[1;36mLDFLAGS[0m ="
	@echo "$(LDFLAGS)" | tr -s " " "\n"

