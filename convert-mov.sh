#!/bin/bash

# List of video extensions to convert
video_extensions=("avi" "mkv" "flv" "mp4" "wmv" "webm")

# Function to check if a file has a valid video extension
has_valid_extension() {
  local file="$1"
  local extension="${file##*.}"
  
  for ext in "${video_extensions[@]}"; do
    if [[ "$extension" == "$ext" ]]; then
      return 0
    fi
  done
  return 1
}

# Iterate over all files in the specified directory
for file in "$1"/*; do
  # Check if the file has a valid video extension and is not already mp4
  if has_valid_extension "$file" && [[ "${file##*.}" != "mov" ]]; then
    # Define the output filename
    output_file="${file%.*}.mov"
    
    # Construct and execute the ffmpeg command
    ffmpeg -i "$file" "$output_file"
  fi
done
