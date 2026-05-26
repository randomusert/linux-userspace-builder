# C compiler set to gcc to compile the main source directory.
CC=gcc
# Setting the C++ compiler just in case we need it.
CXX=g++
# Setting the flags for both C and C++ compilers to enable all warnings.
CFLAGS=-Wall -Wextra
CXXFLAGS=-Wall -Wextra

BIN_DIR=bin
SRC_DIR=src
INC_DIR=inc

build:
	@echo "Building the project..."
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -I$(INC_DIR) $(SRC_DIR)/main.c -o $(BIN_DIR)/linux-usr-space-builder
	@echo "Build completed successfully."

clean:
	@echo "Cleaning the project..."
	@rm -rf $(BIN_DIR)
	@echo "Clean completed successfully."

help:
	@echo "Usage:"
	@echo "  make build   - Build the project."
	@echo "  make clean   - Clean the build artifacts."
	@echo "  make help    - Display this help message."

run: build
	@echo "Running the project..."
	@./$(BIN_DIR)/linux-usr-space-builder

.PHONY: build clean help run