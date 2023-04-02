echo "Starting the installer"

sudo pacman -Syu


sudo pacman -S gcc 
sudo pacman -S python3 
sudo pacman -S firefox
sudo pacman -S nautilus
sudo pacman -S gnome-terminal


echo "Starting git setup"

git config --global user.email "chesskingmj@gmail.com"
git config --global user.name "MJ Roland"

echo "Finished git setup"

echo "start expressvpn"

curl --output expressvpn.pkg.tar.xz \
"https://www.expressvpn.works/clients/linux/expressvpn-3.46.0.7-1-x86_64.pkg.tar.xz"

sudo pacman -U expressvpn.pkg.tar.xz

expressvpn activate




echo "Done With installation"
