#!/bin/bash

# Get the directory where the script is located
script_dir=$(dirname "$(realpath "$0")")

# Default folder name
folder_name=""

# Process command-line arguments
while getopts ":d:" opt; do
    case $opt in
        d)
            folder_name="$OPTARG"
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            exit 1
            ;;
    esac
done

# Ensure folder_name is provided
if [ -z "$folder_name" ]; then
    echo "Usage: npx @mantiqh/lambda-generate -d <folder_name>"
    exit 1
fi

# Create a new directory with the provided name in the current directory
new_folder_path="$(pwd)/${folder_name}"
mkdir -p "${new_folder_path}"

# Get the template folder path relative to the script's location
template_folder_path="${script_dir}/lambda-template"

# Copy each file from the template folder to the new folder (including hidden files)
shopt -s dotglob
cp -r "${template_folder_path}/"* "${new_folder_path}"
shopt -u dotglob

echo "Folder '$folder_name' created and files copied successfully."
