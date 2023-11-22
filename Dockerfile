FROM ros:humble

ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user
RUN echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER user
WORKDIR /home/user

RUN echo "source /opt/ros/humble/setup.bash" >> /home/user/.bashrc
RUN sudo apt update
RUN sudo apt install curl build-essential git cmake g++ python3-pip -y
RUN rosdep update

RUN mkdir .pico
RUN sudo apt install gcc-arm-none-eabi libnewlib-arm-none-eabi libstdc++-arm-none-eabi-newlib -y
RUN cd .pico && git clone https://github.com/raspberrypi/pico-sdk.git --branch master
RUN cd .pico/pico-sdk && git submodule update --init
RUN echo "export PICO_SDK_PATH=/home/user/.pico/pico-sdk" >> /home/user/.bashrc
