#!/bin/bash

# List of video extensions to convert
video_extensions=("avi" "mkv" "flv" "mov" "wmv" "webm")

# Function to check if an array contains a value
contains() {
  local array="$1[@]"
  local seeking=$2
  local in=1
  for element in "${!array}"; do
    if [[ "$element" == "$seeking" ]]; then
      in=0
      break
    fi
  done
  return $in
}

# Iterate over all files in the specified directory
for file in "$1"/*; do
  # Get the file extension
  extension="${file##*.}"

  # Check if the file has one of the video extensions and is not already mp4
  if contains video_extensions "$extension" && [[ "$extension" != "mp4" ]]; then
    # Define the output filename
    output_file="${file%.*}.mp4"
    
    # Construct and execute the ffmpeg command
    ffmpeg -i "$file" "$output_file"
  fi
done
