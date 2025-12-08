#!/bin/bash
# ============================================
# Auto build firmware script: myBuild.sh
# ============================================

# How to use:
# 1. Give execution permission to this file:
#    chmod +x myBuild.sh
#
# 2. Run the script:
#    ./myBuild.sh
#
# ============================================

# Remove old build directory if it exists
rm -rf build

# Create a new build directory and move into it
mkdir -p build && cd build

# Configure project with CMake (using Ninja)
cmake -G Ninja ..

# Build target BETAFPVF411 with Ninja
ninja BETAFPVF411
