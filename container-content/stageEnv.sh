#!/bin/bash

REPO_ROOT="/workspace/hello-world"
cd /workspace
if [ ! -d "$REPO_ROOT" ]; then
    git clone https://github.com/cleester/hello-world.git
fi

