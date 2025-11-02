# Cog Explore

A ROS 2 workspace for benchmarking autonomous exploration methods with human pilot performance comparison.

## Overview

This repository contains the implementation of the cognitive exploration (Cog Explore) method, designed for autonomous robot exploration and navigation benchmarking.

## Prerequisites

- Docker installed on your system
- Git
- **NVIDIA Container Toolkit** (required for systems with NVIDIA GPU to ensure proper graphics rendering and visualization) 

## Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/JiyuanTHU/cog_explore.git
cd cog_explore
```

### 2. Setup Docker

Pull the pre-built Docker image:

```bash
docker pull ghcr.io/jiyuanthu/cog_explore:latest
```

#### For NVIDIA GPU Users

If you have an NVIDIA graphics card, install the NVIDIA Container Toolkit to enable GPU acceleration and proper graphics rendering:

```bash
# Add NVIDIA Container Toolkit repository
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

# Install NVIDIA Container Toolkit
sudo apt-get update
sudo apt-get install -y nvidia-container-toolkit

# Restart Docker daemon
sudo systemctl restart docker
```

**Troubleshooting**: If you encounter Docker credential errors, fix your Docker config:
```bash
mkdir -p ~/.docker
echo '{"auths": {}}' > ~/.docker/config.json
```

### 3. Run the Docker Container

```bash
cd docker
./run.sh
```

### 4. Execute into the Container

Open a new terminal and run:

```bash
cd docker
./exec.sh
```

### 5. Launch the Teleoperation Interface

Inside the Docker container:

```bash
cd /root/Ji_ws/ros2_ws/gui
python3 qt_teleop.py
```

## Usage

[Add more detailed usage instructions here]

## Project Structure

```
├── docker/          # Docker configuration files
├── src/            # ROS 2 source packages
├── bash/           # Helper bash scripts
├── scripts/        # Utility scripts
├── gazebo_models/  # Simulation models
└── gui/            # GUI applications
```

## Contributing

[Add contribution guidelines]

## License

[Add license information]

## Citation

If you use this work in your research, please cite:

```
[Add citation information]
```

## Contact

[Add contact information]
