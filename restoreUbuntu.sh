# This is a script to restore previous ubuntu config
# Run this script as super user
#
# todo:
# 1. install git 
# 2. clone required repos
# 3. install applications
# 4. move config files to appropriate locations

# check which package is better snap or flatpak etc
#
# 1. install git
echo "Installing git"
sudo apt --quiet install git
echo "Git installed"

# 2. clone required repos
echo "Cloning config files"
git clone https://github.com/SrivatsaRUpadhya/config_files.git

echo "Moving config files"
# 3. move config files to appropriate locations
mv config_files/ ~/
echo "Config success"

# 3. install applications
echo "Installing applications"
echo "Installing i3"
sudo apt --quiet install i3 
echo "Installing vim"
sudo apt --quiet install vim
echo "Installing tmux"
sudo apt --quiet install tmux
echo "Installing zsh"
sudo apt --quiet install zsh
echo "Installing curl"
sudo apt --quiet install curl
echo "Installing firefox"
sudo apt --quiet install firefox
echo "Installing fzf"
sudo apt --quiet install fzf
