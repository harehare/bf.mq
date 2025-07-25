# Brainfuck Interpreter in mq

A Brainfuck interpreter implemented in the [mq](https://github.com/harehare/mq).

## Overview

This project provides a complete Brainfuck interpreter that can execute Brainfuck programs with customizable memory size and input handling.

## Files

- `bf.mq` - The main Brainfuck interpreter implementation
- `run.sh` - Shell script wrapper for easy execution

## Usage

### Using the shell script

```bash
./run.sh [program] [input_str] [memory_size]
```

**Parameters:**
- `program` - Brainfuck program code (default: "")
- `input_str` - Input string for the program (default: "")
- `memory_size` - Memory size in cells (default: 1000)

### Examples

**Hello World:**
```bash
./run.sh '++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.' '' 1000
```

**Get help:**
```bash
./run.sh --help
```

### Direct mq usage

```bash
mq "include \"bf\" | interpret_brainfuck(\"program_code\", \"input\", memory_size)"
```

## Brainfuck Commands

| Command | Description                                             |
| ------- | ------------------------------------------------------- |
| `>`     | Increment the data pointer                              |
| `<`     | Decrement the data pointer                              |
| `+`     | Increment the byte at the data pointer                  |
| `-`     | Decrement the byte at the data pointer                  |
| `.`     | Output the byte at the data pointer                     |
| `,`     | Input a byte and store it at the data pointer           |
| `[`     | Jump forward after matching `]` if current cell is zero |
| `]`     | Jump back after matching `[` if current cell is nonzero |
