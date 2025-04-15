#!/usr/bin/env bash


# 1. Update system and packages

yay -Syu


# 2. Remove orphans (with confirmation)

for package in $(yay -Qttdq); do
    yay -Rns "$package" --confirm
done


# 3. Remove package cache

yay -Scc


# 4. Remove user cache

rm -rf ~/.cache/*


# 5. Remove system temporary files

sudo find /tmp/ -mindepth 1 -delete
sudo find /var/tmp/ -type f -delete


# 6. Remove `pacman` and `yay` cache

sudo rm -rf /var/cache/pacman/pkg/*
sudo rm -rf /var/cache/yay/*

