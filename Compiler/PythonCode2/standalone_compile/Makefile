# Define the compiler and compiler flags
CC = aarch64-none-elf-gcc
CFLAGS = -march=armv8-a -mcpu=cortex-a53 -nostartfiles -I ./include

# Define the linker and linker flags
LD = aarch64-none-elf-gcc
LDFLAGS = -march=armv8-a -mcpu=cortex-a53 -nostartfiles -T hello.ld  -I ./include
ADD_LIB =./lib/libxil.a

# List all source files (cpp files) in the current folder
SRCS := $(shell dir /b /a-d .\*.c)

# List all object files corresponding to the source files
OBJS = $(SRCS:.c=.o)

# Define the final target executable
TARGET = hello.elf

# Default rule: build the executable
all: $(TARGET)

# Rule to compile each source file into object files
%.o: %.cpp
	$(CC) $(CFLAGS) -c $< $(ADD_LIB) -o $@

# Rule to compile each source file into object files2
%.o: %.c
	$(CC) $(CFLAGS) -c $< $(ADD_LIB) -o $@

# Rule to build the target executable
$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^ $(ADD_LIB)

# Clean rule: remove generated files
clean:
	del hello.o
	del $(OBJS)
	del $(TARGET)

#print all dirs
get-dir:
	$(ALL_DIRS)
