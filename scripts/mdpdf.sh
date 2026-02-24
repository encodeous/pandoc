#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <markdown_file>"
    echo "Example: $0 assignment.md"
    exit 1
fi

input_file="$1"

if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' not found"
    exit 1
fi

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
base_name=$(basename "$input_file" .md)

output_file="${base_name}.pdf"
metadata_file="${script_dir}/metadata.yaml"
diagram_lua="${script_dir}/diagram.lua"


echo "Converting $input_file to $output_file..."
# You can customize the pandoc command with additional options as needed.
pandoc "$input_file" "$metadata_file" -f markdown+tex_math_dollars+inline_code_attributes+fenced_divs --lua-filter "$diagram_lua" -o "$output_file"


if [ $? -eq 0 ]; then
    echo "Successfully created $output_file"
    exit 0
else
    echo "Error: Failed to convert $input_file"
    exit 1
fi
