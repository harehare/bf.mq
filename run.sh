#!/bin/bash

# Brainfuck Interpreter Runner Script
# Usage: ./run.sh [program] [input_str] [memory_size]
# Default: program="", input_str="", memory_size=1000

# Set default values
PROGRAM=${1:-""}
INPUT_STR=${2:-""}
MEMORY_SIZE=${3:-1000}

# Show help if -h or --help is passed
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    echo "Usage: ./run.sh [program] [input_str] [memory_size]"
    echo "Default: program='', input_str='', memory_size=1000"
    echo ""
    echo "Arguments:"
    echo "  program      - Brainfuck program code"
    echo "  input_str    - Input string for the program"
    echo "  memory_size  - Memory size (default: 1000)"
    echo ""
    echo "Example:"
    echo "  ./run.sh '++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.' '' 1000"
    exit 0
fi

echo "Running Brainfuck interpreter"
echo "Program: $PROGRAM"
echo "Input: $INPUT_STR"
echo "Memory size: $MEMORY_SIZE"
echo ""

# Run the mq interpreter with the brainfuck program
mq -I null "include \"bf\" | interpret_brainfuck(\"$PROGRAM\", \"$INPUT_STR\", $MEMORY_SIZE)"
