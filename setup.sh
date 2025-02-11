#!/bin/bash

# Update package list and install necessary system dependencies
sudo apt-get update
sudo apt-get install -y libgl1-mesa-glx

# Create and activate a conda environment
conda create -n road-damage-detection-env python=3.9 -y
source activate road-damage-detection-env

# Install Python packages
pip install av==9.2.0
pip install opencv-python
pip install streamlit
pip install streamlit-webrtc
pip install ultralytics

# Setup Streamlit configuration
mkdir -p ~/.streamlit/
echo "\
[server]\n\
port = \$PORT\n\
enableCORS = false\n\
headless = true\n\
\n\
" > ~/.streamlit/config.toml

echo "Setup complete. The environment is ready to use."
