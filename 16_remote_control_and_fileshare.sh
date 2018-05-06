# xdcmp setting
sudo sh -c 'echo "[XDMCPServer]" > /etc/lightdm/lightdm.conf'
sudo sh -c 'echo "enabled=true" >> /etc/lightdm/lightdm.conf'

# windows file share
sudo apt-get -y install samba
# share ~/share
mkdir -p ~/share
echo "[share]" | sudo tee -a /etc/samba/smb.conf
echo "path = /home/$USER/share" | sudo tee -a /etc/samba/smb.conf
echo "read only = No" | sudo tee -a /etc/samba/smb.conf
echo "guest ok = Yes" | sudo tee -a /etc/samba/smb.conf
echo "force user = $USER" | sudo tee -a /etc/samba/smb.conf
sudo service smbd restart


