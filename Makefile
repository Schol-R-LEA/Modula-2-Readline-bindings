COMPILER=$(HOME)/opt/bin/gm2
FLAGS=-g
INC=defs
SRC=impls
BIN=bin
TESTS=tests


test: $(TESTS)/rl_test.mod $(INC)/readline.def
	$(COMPILER) $(FLAGS) -lreadline -I$(INC)/ $(TESTS)/rl_test.mod -o $(BIN)/rl_test
