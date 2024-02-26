#!/bin/bash

search_files()
{ 
local directoy=$1
local extension=$2
# find file
find "$directory" -type f  -name "*.$extension"
}

main()
{
read -p "enter the directory to search in:    " directory
read -p "enter the file  extension to search:  " extension



# search extension
found_files=$(search_files "$directory" "$extension")

# file is found
if [ -n "$found_files" ];
then
	echo "found file with extension '$extension'in directory '$directory'and its subdirectories:"
	echo "$found_files"
else
	echo "no file with extension '$extension'found in directory '$directory'& its subdirectories."
	echo "$found_files"
fi
}
main
