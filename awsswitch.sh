#!/bin/bash

# This is meant to be called with 'source' since it sets environment variable.
# Add:
#   alias awsswitch="source <PATH OF AWSSWITCH>/awsswitch.sh"
# to your .bash_profile to make your life simpler

AWS_INFO="amplify/.config/local-aws-info.json"
DIR=$(pwd)

# Find the right top-level directory
while [ -n "$DIR" ]; do
  AWS_INFO_PATH="${DIR}/amplify/.config/local-aws-info.json"
  if [ -f "$AWS_INFO_PATH" ]; then
    break
  fi
  DIR=$(echo "${DIR}" | sed 's=/[^/]*$==g')
done

if [ -z "$AWS_PROFILE" ]; then
  export AWS_PROFILE=administrator
  echo "Switched to administrator AWS profile"
  if [ -f "$AWS_INFO_PATH" ]; then
    sed -i '' 's/"profileName": ".*"/"profileName": "administrator"/g' "$AWS_INFO_PATH"
  fi
else
  unset AWS_PROFILE
  echo "Switched to default AWS profile"
  if [ -f "$AWS_INFO_PATH" ]; then
    sed -i '' 's/"profileName": ".*"/"profileName": "default"/g' "$AWS_INFO_PATH"
  fi
fi
