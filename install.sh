#!/bin/bash
#beta test

sudo apt install tmux -y
sleep 5

sh <(curl -L https://nixos.org/nix/install) --no-daemon
sleep 2
nixinstall=". $HOME/.nix-profile/etc/profile.d/nix.sh"
sleep 2
echo $nixinstall >> .bashrc
sleep 2


tmux new -d 'nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager ; sleep 3 ; nix-channel --update ; sleep 2 ; nix-shell '<home-manager>' -A install'

echo "Install home-manager successfull!"


