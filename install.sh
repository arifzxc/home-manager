#!/bin/bash
#beta test

user=$(whoami)
su $user 

sh <(curl -L https://nixos.org/nix/install) --no-daemon
sleep 5
nixinstall=". /home/$user/.nix-profile/etc/profile.d/nix.sh"
echo $nixinstall >> .bashrc

exit
sleep 2

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sleep 1
nix-channel --update
sleep 2

nix-shell '<home-manager>' -A install

