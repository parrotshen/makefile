TEST  = info
TEST += subst
TEST += strip
TEST += filter
TEST += filename
TEST += foreach
TEST += condition
TEST += shell
TEST += define

all:
	@for i in $(TEST) ; do \
        make -sf Makefile.$$i ; \
    done

config clean:
	@make -sf Makefile.define $@

