#!/usr/bin/env bash

# This file compiles .c or .cpp files
# It automatically chooses the required compiler
# gcc for .c files and g++ for .cpp files

# Getting the filename and extension
file_name=$(echo $1|sed -r 's/(.*)\.(c|cpp)/\1/')
extension=$(echo $1|sed -r 's/(.*)\.(c|cpp)/\2/')

# Default compiler and  Changing the compiler if the file is .cpp
compiler="gcc"
if [ "$extension" = "cpp" ]
then
	compiler="g++"
fi

# Printing what is to be executed 
echo "$compiler -ggdb -Wall -Werror $1 -o $file_name"
# Execution
$compiler -ggdb -Wall -Werror $1 -o $file_name
