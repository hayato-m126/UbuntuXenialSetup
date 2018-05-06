# add repository
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:webupd8team/nemo
sudo apt-get -y update

# install curl
sudo apt-get -y install curl

# update nemo
# nemo自体アップデートしないとrabbivcsのアイコンオーバーレイでなかった。
sudo apt-get -y install nemo

# git and git gui tools
sudo apt-get -y install git
# git lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get -y install git-lfs
# rabbitvcs, gui git client
sudo apt-get -y install python-gtk2 python-configobj python-gobject python-simplejson python-gtkspellcheck python-svn subversion python-dulwich tk-dev python-glade2 python-dbus
sudo apt-get -y install python-nautilus python-nemo
# diff tool
sudo apt-get -y install meld
git clone https://github.com/rabbitvcs/rabbitvcs.git
cd rabbitvcs
sudo python setup.py install --install-layout=deb
sudo cp clients/nemo/RabbitVCS.py /usr/share/nemo-python/extensions
sudo cp clients/nautilus-3.0/RabbitVCS.py /usr/share/nautilus-python/extensions
cd ../
