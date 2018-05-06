# vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
#↓ないとGPG エラー: https://packages.microsoft.com stable InReleaseが出る
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo apt-get update
sudo apt-get -y install code # or code-insiders
# install vscode extensions
code --install-extension EditorConfig.editorconfig
code --install-extension donjayamanne.githistory
code --install-extension robertohuertasm.vscode-icons
code --install-extension ms-python.python
