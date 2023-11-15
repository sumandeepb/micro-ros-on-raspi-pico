docker build -t ros2_pico_dev \
    --build-arg USER_ID=$(id -u) \
    --build-arg GROUP_ID=$(id -g) .