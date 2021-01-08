#
# test.c
#  |
#  +--> func_a.c
#  |
#  +--> func_b.c
#        |
#        +--> func_c.c
#

CC = gcc
CFLAGS = -Wall

BIN = test
SRC = test.c func_a.c func_b.c func_c.c
OBJ = $(SRC:.c=.o)
DEP = $(SRC:.c=.c.d)


all: $(BIN)
	@echo

$(BIN): $(OBJ)
	@echo "$(CC) $(OBJ) -o [1;33m$(BIN)[0m"
	@$(CC) $(OBJ) -o $(BIN)

%.o: %.c
	@echo "$(CC) $(CFLAGS) -c $< -o [1;33m$@[0m"
	@$(CC) $(CFLAGS) -c $< -o $@

ifeq ($(findstring $(MAKECMDGOALS), clean), )
%.c.d: %.c
	@echo "$@ \\" >  $@
	@$(CC) -M $<  >> $@ || rm $@
endif

-include $(DEP)

clean:
	rm -f $(BIN) $(OBJ) $(DEP)

.PHONY: $(BIN)
