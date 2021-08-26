CC := gcc
LIBS := mylib
LIB_CC := ar rc

DEBUG := 
CFLAGS := -c
LDFLAGS := -L. -l 

BIN_DIR := bin
SRC_DIR := src
OBJ_DIR := build
HDR_DIR := headers

BIN := calculator
OBJ := add.o $(OBJ_DIR)/sub.o $(OBJ_DIR)/mul.o $(OBJ_DIR)/div.o 
SRC := add.c $(SRC_DIR)/sub.c $(SRC_DIR)/mul.c $(SRC_DIR)/div.c

.PHONY: all debug create_dir clean

all: create_dir $(BIN_DIR)/$(BIN)

create_dir:
	mkdir $(BIN_DIR)
	mkdir $(OBJ_DIR)

debug: DEBUG += -g 
debug: all

$(BIN_DIR)/$(BIN): $(LIBS) $(HDR_DIR)/functions.h
	$(CC) $(DEBUG) $(SRC_DIR)/$(BIN).c -o $(BIN_DIR)/$(BIN) $(LDFLAGS) $(LIBS)

$(LIBS): $(OBJ_DIR)/$(OBJ)
	$(LIB_CC) lib$(LIBS).a $(OBJ_DIR)/$(OBJ)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $(DEBUG) $< -o $@

clean:
	rm -rf $(BIN_DIR) $(OBJ_DIR) lib$(LIBS).a
