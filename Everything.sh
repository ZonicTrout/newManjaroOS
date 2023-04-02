echo "Starting the installer"

sudo pacman -Syu


sudo pacman -S gcc 
sudo pacman -S python3 
sudo pacman -S nautilus
sudo pacman -S gnome-terminal


echo "Starting git setup"

git config --global user.email "chesskingmj@gmail.com"
git config --global user.name "MJ Roland"





echo "Done With installation"
