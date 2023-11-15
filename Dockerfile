FROM ros:humble

ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user
USER user
WORKDIR /home/user

RUN echo "source /opt/ros/humble/setup.bash" >> /home/user/.bashrc
