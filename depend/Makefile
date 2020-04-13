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
	@echo "Build ... $(BIN)"
	@echo

$(BIN): $(OBJ)
	$(CC) $(OBJ) -o $(BIN)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

ifneq ($(MAKECMDGOALS), clean)
%.c.d: %.c
	@echo "$@ \\" >  $@
	@$(CC) -M $<  >> $@ || rm $@
endif

-include $(DEP)

clean:
	rm -f $(BIN) $(OBJ) $(DEP)

