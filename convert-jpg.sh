#!/bin/bash

# Convert all images in the given directory to PNG format
for file in "$1"/*; do
    if [[ $file == *.* ]]; then
        filename="${file%.*}"
        magick "$file" "$filename.jpg"
    fi
done