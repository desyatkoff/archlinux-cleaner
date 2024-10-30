# Update all packages
yay -Syyu # If you don't have `yay`, use `sudo pacman -Syyu` instead


# Remove unnecessary files
sudo pacman -Scc
sudo pacman -Rcns $(pacman -Qtdq)
sudo rm -rf "/var/cache"
sudo rm -rf "/home/$USER/.cache"
