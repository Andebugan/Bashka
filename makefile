# Compiler
CC := gcc

# Options
CFLAGS := -std=c99 -Wall -Werror -pedantic -Wextra -Wvla
DFLAGS := -std=c99
TARGET := app.exe
INC_DIR := ./inc

# Files dependencies for constructing .exe file
SRC_COMMON := src/
SRC_IN_OUT := src/
SRCS := $(SRC_COMMON) $(SRC_IN_OUT) src/

app.exe: $(SRCS)
	$(CC) -o $(TARGET) $(DFLAGS) $(SRCS) -I $(INC_DIR)

debug.exe: $(SRCS)
	$(CC) -o debug.exe $(CFLAGS) $(SRCS) -I $(INC_DIR) -g -ggdb
