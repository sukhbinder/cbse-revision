#!/bin/bash

# Create an array of all PDF files in the current directory
pdf_files=($(ls -t *.pdf))

# Start writing to pdfFiles.js
echo "const pdfFiles = [" > pdfFiles.js

# Loop through each PDF file and append it to pdfFiles.js in JavaScript array format
for ((i=0; i<${#pdf_files[@]}; i++)); do
  # Get the filename
  pdf_file="${pdf_files[$i]}"
  
  # Append file to JS array with double quotes and a comma if it's not the last file
  if [ $i -lt $((${#pdf_files[@]} - 1)) ]; then
    echo "  \"$pdf_file\"," >> pdfFiles.js
  else
    echo "  \"$pdf_file\"" >> pdfFiles.js
  fi
done

# Close the JavaScript array
echo "];" >> pdfFiles.js

echo "pdfFiles.js created with the following contents:"
cat pdfFiles.js



