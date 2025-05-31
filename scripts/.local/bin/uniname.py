#!/bin/python3
import sys

def get_unicode(value):
    return f"Character: {value}, Unicode: {ord(value)}, Hex: {hex(ord(value))}"

# Check if the script is being run with the letter as an argument
if len(sys.argv) > 1:
    char = sys.argv[1]
    if len(char) == 1:
        print(get_unicode(char))
    else:
        print("Please provide only a single character.")
else:
    print("Please provide a character as an argument.")
