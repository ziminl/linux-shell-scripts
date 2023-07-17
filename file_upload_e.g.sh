#!/bin/bash

#https://reqbin.com/req/c-dot4w5a2/curl-post-file

FILE_PATH=$(zenity --file-selection --title="Select File to Upload")

if [[ -z $FILE_PATH ]]; then
  echo "File selection canceled."
  exit 1
fi

REMOTE_URL="https://example.com/upload"

curl -F "file=@$FILE_PATH" $REMOTE_URL

if [[ $? -eq 0 ]]; then
  zenity --info --title="File Upload" --text="File uploaded successfully!"
else
  zenity --error --title="File Upload" --text="Error uploading file."
fi


