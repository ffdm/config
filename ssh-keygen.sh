#!/bin/bash
# Assumes xclip and git are installed
ssh-keygen -t ed25519 -C "fdm@umich.edu"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
xclip -sel clip ~/.ssh/id_ed25519.pub
echo "Host github.com
	ForwardAgent yes
	IdentityFile ~/.ssh/id_ed25519" > ~/.ssh/config
