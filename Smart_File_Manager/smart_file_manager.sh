#!/bin/bash

echo "===== SMART FILE MANAGER ====="

# Create directories if not exist
mkdir -p Documents Images Videos Archives Others

echo "Organizing files..."

for file in *; do
    if [[ -f "$file" ]]; then
        case "$file" in
            *.pdf|*.doc|*.docx|*.txt)
                mv "$file" Documents/
                echo "$file moved to Documents" >> logs.txt
                ;;
            *.jpg|*.jpeg|*.png|*.gif)
                mv "$file" Images/
                echo "$file moved to Images" >> logs.txt
                ;;
            *.mp4|*.mkv|*.avi)
                mv "$file" Videos/
                echo "$file moved to Videos" >> logs.txt
                ;;
            *.zip|*.tar|*.gz)
                mv "$file" Archives/
                echo "$file moved to Archives" >> logs.txt
                ;;
            *)
                mv "$file" Others/
                echo "$file moved to Others" >> logs.txt
                ;;
        esac
    fi
done

echo "File organization complete!"

# Search option
echo ""
echo "Search for a file (enter name or press enter to skip):"
read filename

if [ ! -z "$filename" ]; then
    find . -name "*$filename*"
fi

# Duplicate detection
echo ""
echo "Checking for duplicate files..."

find . -type f -exec md5sum {} + | sort | uniq -w32 -dD

echo "Process finished."