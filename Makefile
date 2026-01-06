# Compiler
CC = gcc

# Target executable
TARGET = Rogue

# Source files
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

# Flags from pkg-config (executed in shell)
CFLAGS = $(shell pkg-config --cflags ncursesw sdl2 SDL2_mixer)
LDFLAGS = $(shell pkg-config --libs ncursesw sdl2 SDL2_mixer)

# Default target: always clean first
all: clean $(TARGET)

# Link object files to produce executable
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $@ $(LDFLAGS)

# Compile each .c to .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean build files
clean:
	rm -f $(OBJ) $(TARGET)
