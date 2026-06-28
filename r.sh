#!/bin/bash

# Set CUDA_PATH from an existing environment variable (adjust if needed)
export CUDA_PATH="$CUDA_PATH_V11_8"

# Remove any existing tensorrt-engines (directory, link, or file)
rm -rf "tensorrt-engines"

# Ensure the target directory exists
mkdir -p "tensorrt-engines-cu118"

# Create a symbolic link: tensorrt-engines -> tensorrt-engines-cu118
ln -sf "tensorrt-engines-cu118" "tensorrt-engines"

# Activate the conda environment and run the Python script
# If conda isn't already initialized in your shell, uncomment the source line:
# source "$(conda info --base 2>/dev/null)/etc/profile.d/conda.sh"
conda activate Rope && python Rope.py

# Pause (wait for user to press a key)
read -p "Press any key to continue..."
