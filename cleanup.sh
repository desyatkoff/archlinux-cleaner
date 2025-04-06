#!/usr/bin/env bash


# 1. Update system and packages

yay -Syu


# 2. Remove package cache

yay -Scc


# 3. Remove orphans (with confirmation)

echo "The following orphaned packages will be removed: "

yay -Qttd

read -p "Continue? [y/N] " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]; then
    for package in $(yay -Qttd); do
        yay -Rns "$package" --confirm
    done
fi


# 4. Remove user cache

rm -rf ~/.cache/*


# 5. Remove system temporary files

sudo find /tmp/ -mindepth 1 -delete
sudo find /var/tmp/ -type f -delete


# 6. Remove `pacman` and `yay` cache

sudo rm -rf /var/cache/pacman/pkg/*
sudo rm -rf /var/cache/yay/*

