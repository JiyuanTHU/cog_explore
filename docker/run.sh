
#!/bin/bash
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth

# set up X11 auth
touch "$XAUTH"
xauth nlist "$DISPLAY" \
  | sed -e 's/^..../ffff/' \
  | xauth -f "$XAUTH" nmerge -

docker run --runtime=nvidia --privileged --gpus all \
  --name "cos-explore" --rm -it \
  --volume="$XSOCK:$XSOCK:rw" \
  --volume="$XAUTH:$XAUTH:rw" \
  -v /run/user/1000:/run/user/1000 \
  --shm-size=4gb \
  --env="XAUTHORITY=$XAUTH" \
  --env="DISPLAY=$DISPLAY" \
  --env="TERM=xterm-256color" \
  --env="QT_X11_NO_MITSHM=1" \
  --net=host \
  --device=/dev/input/js0 \
  cog_explore \
  /bin/bash -c "exec bash"
