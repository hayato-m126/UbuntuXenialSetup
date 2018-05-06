sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get -y install ros-kinetic-desktop-full

sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get -y install python-rosinstall python-rosinstall-generator python-wstool build-essential

#make catkin_workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_init_workspace src
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
catkin_make
source ~/.bashrc
cd -

#simulator
sudo apt-get -y install ros-kinetic-kobuki-gazebo
sudo apt-get -y install ros-kinetic-pr2-simulator
sudo apt-get -y install ros-kinetic-turtlebot-gazebo
#raspimouse simulator
bash -exv -c "$(curl -sSfL https://git.io/raspimouse-sim-installer)"
#uwsim
echo "- other: {local-name: /opt/ros/kinetic/share/ros}" > ~/catkin_ws/.rosinstall
echo "- other: {local-name: /opt/ros/kinetic/share}" >> ~/catkin_ws/.rosinstall
echo "- setup-file: {local-name: /opt/ros/kinetic/setup.sh}" >> ~/catkin_ws/.rosinstall
echo "- git: {local-name: src/underwater_simulation, uri: 'https://github.com/uji-ros-pkg/underwater_simulation.git', version: kinetic-devel}" >> ~/catkin_ws/.rosinstall
rosws update
rosdep install --from-paths src --ignore-src --rosdistro kinetic -y
catkin_make install

#tool
sudo apt-get -y install ros-kinetic-rqt*
#sudo apt-get -y install ros-kinetic-rqt-ez-publisher #include in above
sudo apt-get -y install ros-kinetic-rosdoc-lite
sudo apt-get -y install ros-kinetic-usb-cam
sudo apt-get -y install ros-kinetic-rosserial ros-kinetic-rosserial-arduino
sudo apt-get -y install ros-kinetic-joy

#joystic setting tool
sudo apt-get -y install jstest-gtk
