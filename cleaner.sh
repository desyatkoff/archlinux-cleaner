# Update all packages
yay -Syyu # If you don't have `yay` aur helper, then use `pacman -Syyu`


# Remove pacman cache
sudo pacman -Scc
sudo pacman -Rcns $(pacman -Qtdq)

# Remove temporary files
sudo rm -rf "/tmp"
sudo rm -rf "/var/tmp"

# Remove cache
sudo rm -rf "/var/cache"
sudo rm -rf "/home/$USER/.cache"
