CC = gcc
CFLAGS = -Wall -Wextra -O2
SRC = server.c
TARGET = server

all: $(TARGET)
$(TARGET): $(SRC)
		$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

run: $(TARGET)
		./$(TARGET)

clean:
		rm -f $(TARGET)

.PHONY: all run clean server build-and-run
