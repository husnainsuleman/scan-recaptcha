#!/bin/bash

# This script scans a given URL for the presence of a recaptcha

# Set the URL to scan
url="https://www.example.com"

# Use curl to perform a GET request on the URL
response=$(curl -s -X GET "$url")

# Use grep to search the response for the string "recaptcha"
if grep -q "recaptcha" <<< "$response"; then
  # If the string is found, print a success message
  echo "Recaptcha found on $url"
else
  # If the string is not found, print a failure message
  echo "Recaptcha not found on $url"
fi
