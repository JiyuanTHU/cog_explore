# Cog Explore

A ROS 2 workspace for benchmarking autonomous exploration methods with human pilot performance comparison.

## Overview

This repository contains the implementation of the cognitive exploration (Cog Explore) method, designed for autonomous robot exploration and navigation benchmarking.

## Prerequisites

- Docker installed on your system
- Git

## Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/JiyuanTHU/cog_explore.git
cd cog_explore
```

### 2. Setup Docker

You have two options:

#### Option A: Pull Pre-built Image (Recommended)

```bash
docker pull ghcr.io/jiyuanthu/cog_explore:latest
```

#### Option B: Build from Source

```bash
cd docker
docker build -f Dockerfile -t cog_explore:latest ..
```

**Note**: If you encounter Docker credential errors, fix your Docker config:
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
