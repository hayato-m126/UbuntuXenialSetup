# firewall for security
sudo apt-get -y install gufw

#setting editor
sudo apt-get -y install dconf-editor

#hardware infomation and benchmark
sudo apt-get -y install hardinfo

#swap
sudo apt-get -y install dphys-swapfile

# NetBIOS name resolve
sudo apt-get -y install winbind
sudo sed -i -e s/" dns"/" dns wins"/ /etc/nsswitch.conf

#NTP PC clock
sudo apt-get -y install chrony
sudo apt-get -y ntpdate
sudo ntpdate -q ntp.nict.jp

# GUI grub editor
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo apt-get -y update
sudo apt-get -y install grub-customizer

# partition tool
sudo apt-get -y install gparted
