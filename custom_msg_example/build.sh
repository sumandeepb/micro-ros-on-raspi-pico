# run within ros2_pico_env docker containter
echo "run within ros2_pico_env docker containter"
cd uros_ws
rosdep install --from-paths src --ignore-src -y
colcon build
source install/local_setup.bash
ros2 run micro_ros_setup create_firmware_ws.sh generate_lib
ros2 run ros2_servo create_fwws.sh
ros2 run micro_ros_setup build_firmware.sh $(pwd)/my_toolchain.cmake $(pwd)/my_colcon.meta
cd ..
mkdir build
cd build
cmake ..
make -j4
cd ..