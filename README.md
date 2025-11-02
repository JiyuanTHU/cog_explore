# This repo is used to benchmarking human pilot with cog explore method proposed 

## Clone the repo
```bash
git clone http://the url
```
## first pull the docker 
```bash
cd docker
docker pull ghcr.io/jiyuanthu/cog_explore:latest
```
## second 
```bash
cd docker && ./run.sh
```
## into the docker
```
cd docker && ./exec.sh
```
## inside the docker 
```
cd /root/Ji_ws/ros2_ws/gui
python3 qt_teleop.py
```
