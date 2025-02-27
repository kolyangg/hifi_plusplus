#!/bin/bash
# Exit on error
set -e

# Create and activate conda environment (if not already created)
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate universe

# Install dependencies (alternatively, use conda env update with environment.yml)
pip install ptflops
pip install wandb

# Download checkpoints
models/hifi_pp/download_extract_weights.sh

wget https://github.com/SamsungLabs/hifi_plusplus/releases/download/w/se.pth -P checkpoints/hifi_pp/