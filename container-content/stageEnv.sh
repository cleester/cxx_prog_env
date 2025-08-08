#!/bin/bash

REPO_ROOT="/workspace/exercises"
cd /workspace
if [ ! -d "$REPO_ROOT" ]; then
    git clone https://github.com/cleester/exercises.git
fi

