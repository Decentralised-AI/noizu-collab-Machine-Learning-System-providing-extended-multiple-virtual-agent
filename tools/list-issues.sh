#!/bin/bash

# Generating the environment variable names for the project scope
GITHUB_AUTH_TOKEN_VAR="GITHUB_API_TOKEN__${NOIZU_PROJECT}"
GITHUB_REPO_NAME_VAR="GITHUB_REPO_NAME__${NOIZU_PROJECT}"
GITHUB_REPO_OWNER_VAR="GITHUB_REPO_OWNER__${NOIZU_PROJECT}"

# Fetching the values of the environment variables
GITHUB_AUTH_TOKEN=${!GITHUB_AUTH_TOKEN_VAR}
owner=${!GITHUB_REPO_OWNER_VAR}
repo=${!GITHUB_REPO_NAME_VAR}

if [ -z "$GITHUB_AUTH_TOKEN" ] || [ -z "$owner" ] || [ -z "$repo" ]; then
  echo "Error: Missing required environment variables. Please set ${GITHUB_AUTH_TOKEN_VAR}, ${GITHUB_REPO_NAME_VAR}, and ${GITHUB_REPO_OWNER_VAR}."
  exit 1
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
