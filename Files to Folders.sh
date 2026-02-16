#!/bin/bash

# Iterate over each file in the current directory
for file in *.*; do
    # Skip directories
    if [ -d "$file" ]; then
        continue
    fi

    # Get the filename without the extension
    filename="${file%.*}"

    # Create a directory with the filename
    mkdir -p "$filename"

    # Move the file into the directory
    mv "$file" "$filename/"
done

echo "Files have been moved to their respective folders."