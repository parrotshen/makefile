DEMO  = func
DEMO += multi-target
DEMO += variable
DEMO += shell
DEMO += depend

all:
	@for i in $(DEMO) ; do \
        echo "[1;32m[ $$i ][0m" ; \
        make -sC $$i all ; \
    done

.PHONE: $(DEMO)
