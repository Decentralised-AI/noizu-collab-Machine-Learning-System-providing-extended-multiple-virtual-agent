#!/bin/bash

# Set the necessary variables
repo=noizu-collab
owner=noizu-labs

# Check if the GITHUB_AUTH_TOKEN variable is set
if [[ -z "${GITHUB_AUTH_TOKEN}" ]]; then
  # Prompt the user to enter their auth token
  echo "Please enter your GitHub personal access token:"
  read -r GITHUB_AUTH_TOKEN
fi

# Get the list of open issues
issues=$(curl -s -H "Authorization: token ${GITHUB_AUTH_TOKEN}" "https://api.github.com/repos/${owner}/${repo}/issues?state=open")

# Sort the issues by ID in ascending order
sorted_issues=$(echo "${issues}" | jq '. | sort_by(.number)')

# Loop through the sorted issues and output their details
echo "Open tickets in ${owner}/${repo}:"
echo "-----------------------------"
for issue in $(echo "${sorted_issues}" | jq -r ".[] | @base64"); do
  # Parse the issue details
  id=$(echo "${issue}" | base64 --decode | jq -r ".number")
  title=$(echo "${issue}" | base64 --decode | jq -r ".title")
  description=$(echo "${issue}" | base64 --decode | jq -r ".body")

  # Output the issue details
  echo "id: ${id}"
  echo "title: ${title}"
  echo "description: ${description}"
  echo "-----------------------------"
done
