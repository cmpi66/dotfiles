#!/bin/bash

# # Replace with your own API key
# API_KEY="pit-eIzSapwFx0B6"

# # Replace with the language you want to check (e.g., en-US, en-GB, es-ES)
# LANGUAGE="en-US"

# # Replace with the path to the text file you want to check
# TEXT_FILE="/home/chris/dl/it-resume.md"

# # Check for grammar and spelling errors using LanguageTool
# curl -X POST \
#      -H "Content-Type: application/x-www-form-urlencoded" \
#      -d "language=$LANGUAGE&text=$(cat $TEXT_FILE)&enabledOnly=false&apiKey=$API_KEY" \
#      https://api.languagetoolplus.com/v2/check > errors.xml

# # Print the errors (if any)
# if grep -q '<error' errors.xml; then
#     echo "Errors found:"
#     grep '<error' errors.xml | sed -e 's/<[^>]*>//g'
# else
#     echo "No errors found."
# fi

# # Remove the temporary XML file
# rm errors.xml


#!/bin/bash

# # Replace with your own API key
# API_KEY="pit-eIzSapwFx0B6"

# # Replace with the language you want to check (e.g., en-US, en-GB, es-ES)
# LANGUAGE="en-US"

# # Check if a filename was provided as a command-line argument
# if [ $# -eq 0 ]; then
#     echo "Please provide a filename as a command-line argument."
#     exit 1
# fi

# # Get the filename from the command-line arguments
# TEXT_FILE="$1"

# # Check if the file exists
# if [ ! -f "$TEXT_FILE" ]; then
#     echo "File not found: $TEXT_FILE"
#     exit 1
# fi

# # Check for grammar and spelling errors using LanguageTool
# curl -X POST \
#      -H "Content-Type: application/x-www-form-urlencoded" \
#      -d "language=$LANGUAGE&text=$(cat $TEXT_FILE)&enabledOnly=false&apiKey=$API_KEY" \
#      https://api.languagetoolplus.com/v2/check > errors.xml

# # Print the errors (if any)
# if grep -q '<error' errors.xml; then
#     echo "Errors found:"
#     grep '<error' errors.xml | sed -e 's/<[^>]*>//g'
# else
#     echo "No errors found."
# fi

# # Remove the temporary XML file
# # rm errors.xml


#!/bin/bash

# # Replace with your own API key
# API_KEY="pit-eIzSapwFx0B6"

# # Replace with the language you want to check (e.g., en-US, en-GB, es-ES)
# LANGUAGE="en-US"

# # Check if a filename was provided as a command-line argument
# if [ $# -eq 0 ]; then
#     echo "Please provide a filename as a command-line argument."
#     exit 1
# fi

# # Get the filename from the command-line arguments
# TEXT_FILE="$1"

# # Check if the file exists
# if [ ! -f "$TEXT_FILE" ]; then
#     echo "File not found: $TEXT_FILE"
#     exit 1
# fi

# # Check for grammar and spelling errors using LanguageTool
# curl -s -X POST \
#      -H "Content-Type: application/x-www-form-urlencoded" \
#      -d "language=$LANGUAGE&text=$(cat $TEXT_FILE)&enabledOnly=false&apiKey=$API_KEY&jsonOutput=true" \
#      https://api.languagetoolplus.com/v2/check > errors.json

# # Print the errors (if any)
# if jq -e '.matches | length > 0' errors.json > /dev/null; then
#     echo "Errors found:"
#     jq -r '.matches[].message' errors.json
# else
#     echo "No errors found."
# fi

# # Remove the temporary JSON file
# rm errors.json
#
#!/bin/bash

# Replace with your own API key
API_KEY="pit-eIzSapwFx0B6"

# Replace with the language you want to check (e.g., en-US, en-GB, es-ES)
LANGUAGE="en-US"

# Check if the correct number of command-line arguments were provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <filename> <username>"
    exit 1
fi

# Get the filename and username from the command-line arguments
TEXT_FILE="$1"
USERNAME="$2"

# Check if the file exists
if [ ! -f "$TEXT_FILE" ]; then
    echo "File not found: $TEXT_FILE"
    exit 1
fi

# Check for grammar and spelling errors using LanguageTool
curl -s -X POST \
     -H "Content-Type: application/x-www-form-urlencoded" \
     -d "language=$LANGUAGE&text=$(cat $TEXT_FILE)&enabledOnly=false&apiKey=$API_KEY&username=$USERNAME&format=json" \
     https://api.languagetoolplus.com/v2/check > errors.json

# Print the errors (if any)
# if jq -e '.matches | length > 0' errors.json > /dev/null; then
#     echo "Errors found:"
#     jq -r '.matches[].message' errors.json
# else
#     echo "No errors found."
# fi

# # Remove the temporary JSON file
# rm errors.json

