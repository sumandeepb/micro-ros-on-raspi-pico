# micro-ros-on-raspi-pico
ROS2 on Raspberry PI 4B with MicroROS on Pico W Examples

## Docker documentation
`Dockerfile` - Contains the build configuration for the docker image for development container.

`./docker-build.sh` - Build docker image `ros2_pico_dev`. Only required first time or after any changes to `Dockerfile`.

`./docker-launch.sh` - Launch docker containter `ros2_pico_env`. Runs in background, persistent unless system is restarted.

`./docker-bash.sh` - Shell access into the container instance.

`./docker-kill.sh`- Force stop container instance. Remove container from memory.

## Build Example

```
cd custom_message_example
./build.sh
```
