# Smart File Manager
Smart File Manager is a Linux shell script that helps automatically organize files in the directory into designated folders based on their type. In many cases, users store many files in one folder,which makes it difficult to manage them. This script solves that problem by sorting files automatically. The main Linux commands used in this project are mkdir -p to create folders, mv to move files, chmod to give permission to the script, and echo to print the messages.



The script creates the following folders (if they do not exist);
- 'Documents' - for '.pdf', '.doc', '.docx', 'txt'
- 'Images' - for '.jpg', '.jpeg', '.png', '.gif'
- 'Videos' - for '.mp4', '.mkv', '.avi'
- 'Archies' - for '.zip', '.tar', '.gz'
- 'Others' - for any other file types

A log file ('logs.txt') records all file movements.

## Features
- Automatically organizes files by type
- Logs file movements
- Search for files by name


## Requirements Tools
- Linux system (mkdir -p, mv, chmod)
- Bash shell

## How to Run
1. Clone the repository:

'''bash
git clone https://github.com/sani-yl/LINUX/tree/main/File%20Manager%20Project
cd smart-file-manager

* To make the script executable;
chmod +x smart_file_manager.sh

* Run the script into Bash;

./smart_file_manager.sh

===== SMART FILE MANAGER =====
Organizing files...
example.pdf moved to Documents
photo.jpg moved to Images
video.mp4 moved to Videos

Search for a file (enter name or press enter to skip):
example

./Documents/example.pdf

Checking for duplicate files...
d41d8cd98f00b204e9800998ecf8427e  ./Documents/example.txt
Process finished.