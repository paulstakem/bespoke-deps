#!/bin/bash

REPO="actions/runner"
VERSION="v2.296.1"
LATEST=$(gh release list --repo actions/runner -L 1 | awk '{print $1}')
if [[ "${LATEST}" > "${VERSION}" ]];
then
  echo "Update available for action/runner ${LATEST}...";
  gh issue create --title "Update ${REPO}" --body "See https://github.com/${REPO}/releases/latest"
  git checkout -b update/${LATEST}
else
  echo "No update required";
  exit 1
fi;
