#!/bin/bash
RUNNER_VERSION="v2.297.0"

mkdir actions-runner
cd actions-runner || return
curl -O -L https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz
tar xzf ./actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz
