# serialport terminal
sudo apt-get -y install cutecom
sudo apt-get -y install gtkterm

# multi window console
sudo apt-get -y install terminator
# text editor
sudo apt-get -y install emacs

# document tool
sudo apt-get -y install doxygen doxygen-gui graphviz

# make tool
sudo apt-get -y install cmake cmake-curses-gui

# ssh client
sudo apt-get -y install putty

# arduino
wget http://downloads.arduino.cc/arduino-1.8.5-linux64.tar.xz
tar xvf arduino-1.8.5-linux64.tar.xz
sudo mv  arduino-1.8.5 /opt
cd /opt/arduino-1.8.5
./install.sh

# electrical circuit editor
sudo apt-get -y install xcircuit
echo '[Desktop Entry]'$'\n''Version=1.0'$'\n''Type=Application'$'\n''Name=XCircuit'$'\n''Name[ja]=XCircuit'$'\n''Comment=Electrical circuit editor'$'\n''Comment[ja]=電子回路図作成'$'\n''Exec=/usr/bin/xcircuit'$'\n''Icon=/usr/share/xcircuit/pixmaps/xcircuit.ico'$'\n''Terminal=false'$'\n''Categories=Development;Graphics;'$'\n''StartupNotify=true'$'\n' | sudo tee /usr/share/applications/xcircuit.desktop