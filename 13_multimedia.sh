# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
#なぜかキーが重複していると言われるので消す
sudo rm /etc/apt/sources.list.d/google.list

# screen shot tool
sudo apt-get -y install shutter

#gif capture tool
sudo apt-get -y install byzanz xdotool x11-utils libx11-dev

#screen capture, video
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
sudo apt-get -y update
sudo apt-get -y install simplescreenrecorder

#Google Earth Enterprise Client
wget https://dl.google.com/dl/earth/client/current/google-earth-ec-stable_current_amd64.deb
sudo dpkg -i google-earth-ec-stable_current_amd64.deb

# vlc
sudo add-apt-repository -y ppa:videolan/stable-daily
sudo apt-get -y update
sudo apt-get -y install vlc