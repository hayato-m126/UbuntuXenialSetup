# initial update
sudo apt-get -y update
sudo apt-get -y upgrade

# English folder name, easy to type directory
LANG=C xdg-user-dirs-update --force

# delete guest session
sudo sh -c 'echo "allow-guest=false" >> /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf'

# do not sleep when close display
sudo sh -c 'echo "HandleLidSwitch=ignore" >> /etc/systemd/logind.conf'

# add to dialout group to use serial port
sudo usermod -aG dialout $USER

# clock setting, use UTC
#sudo timedatectl set-local-rtc 0 --adjust-system-clock
#sudo hwclock --hctosys

# install ssh-server
sudo apt-get -y install openssh-server

# and then reboot
sudo reboot
