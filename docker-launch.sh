    # -- rm
    # -u `stat -c "%u:%g" .` \
docker run \
    -dt \
    --name ros2_pico_env \
    --restart unless-stopped \
    -v $(pwd):/home/user/workspace \
    -v /dev:/dev \
    --privileged \
    --net=host \
    ros2_pico_dev
# \ serial --dev /dev/ttyACM0 -b 115200