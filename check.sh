#!/bin/bash

REPO="actions/runner"
VERSION="v2.296.1"
LATEST=$(curl --silent "https://api.github.com/repos/${REPO}/releases/latest" | jq -r .tag_name)
if [[ "${LATEST}" > "${VERSION}" ]];
then
  echo "Update available for action/runner ${LATEST}...";
  gh issue create --title "Update ${REPO}" --body "See https://github.com/${REPO}/releases/latest"
else
  echo "No update required";
  exit 1
fi;
