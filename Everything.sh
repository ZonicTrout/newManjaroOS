echo "Starting the installer"

sudo pacman -Syu


sudo pacman -S gcc 
sudo pacman -S python3 
sudo pacman -S firefox
sudo pacman -S nautilus
sudo pacman -S code
sudo pacman -S steam


echo "Starting git setup"

git config --global user.email "chesskingmj@gmail.com"
git config --global user.name "MJ Roland"

echo "Finished git setup"

echo "Starting Gnome Tweaks"

 git clone https://github.com/micheleg/dash-to-dock.git
 cd dash-to-dock
 make
 make install
 firefox "https://extensions.gnome.org/extension/307/dash-to-dock/"
 cd ../

echo "Finished Gnome Tweaks"

echo "Starting balena-etcher"

git clone https://aur.archlinux.org/balena-etcher-appimage.git

cd balena-etcher-appimage.git
makepkg
sudo pacman -U balena-etcher-appimage-1.18.6-1-x86_64.pkg.tar.zst
cd ../
echo "Finished balena-etcher"

echo "start expressvpn"

curl --output expressvpn.pkg.tar.xz \
"https://www.expressvpn.works/clients/linux/expressvpn-3.46.0.7-1-x86_64.pkg.tar.xz"

sudo pacman -U expressvpn.pkg.tar.xz

firefox "https://www.expressvpn.com/subscriptions"

expressvpn activate
echo "Done with VPN"

echo "Start with Minecraft"

curl https://launcher.mojang.com/download/Minecraft.tar.gz -o Minecraft.tar.gz
tar -xvf Minecraft.tar.gz

cd minecraft-launcher
./minecraft-launcher
cd ../

echo "Finished with Minecraft"


echo "Done With installation"
