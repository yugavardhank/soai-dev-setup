#!/bin/bash

echo "Updating system..."
sudo apt update -y

echo "Installing Git..."
sudo apt install git -y

echo "Installing Python 3.11..."
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update -y
sudo apt install python3.11 python3.11-venv python3.11-dev -y

echo "Installing VS Code..."
sudo snap install code --classic

echo "Installing VS Code Extensions..."
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
code --install-extension charliermarsh.ruff
code --install-extension fabiospampinato.vscode-cline

echo "Installing uv..."
curl -Ls https://astral.sh/uv/install.sh | sh

echo "Installing Python packages using uv..."
uv pip install numpy
uv pip install pandas
uv pip install streamlit

echo "Setup complete!"