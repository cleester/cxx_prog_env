#!/bin/bash

REPO_ROOT="/workspace/MockGraphFramework"
cd /workspace
if [ ! -d "$REPO_ROOT" ]; then
    git clone https://github.com/cleester/MockGraphFramework.git
fi

