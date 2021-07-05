DEMO  = implicit
DEMO += multi-target
DEMO += depend
DEMO += variable
DEMO += ifelse
DEMO += func
DEMO += debug

all:
	@for i in $(DEMO) ; do \
        echo "[1;32m[ $$i ][0m" ; \
        make -sC $$i all ; \
    done

.PHONE: $(DEMO)
