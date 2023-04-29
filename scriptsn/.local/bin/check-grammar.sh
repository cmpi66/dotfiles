#!/bin/bash

# Set the input and output files
input_file="input.md"
output_file="output.md"

# Set the API key for your LanguageTool subscription
api_key="pit-eIzSapwFx0B6"

# Check the grammar of the input file
curl -X POST -d "language=en-US&text=$(cat $input_file)" "https://api.languagetoolplus.com/v2/check?key=$api_key" > "$output_file"

# Extract the grammar errors from the output file
errors=$(grep -Po '(?<=message":")([^"]*)' "$output_file")

# Print the errors to the console
echo "Grammar errors found:"
for error in $errors
do
  echo "- $error"
done

