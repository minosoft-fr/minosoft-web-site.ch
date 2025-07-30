#!/bin/bash

# GitHub SSH key
mkdir ~/.ssh
chmod 700 ~/.ssh
cd ~/.ssh
ssh-keygen -t rsa -b 4096 -C "minosoft2048@github"
# Generating public/private rsa key pair.
# Enter file in which to save the key (/home/kali/.ssh/id_rsa): minosoft2048.git.ssh
# Enter passphrase (empty for no passphrase):
# Enter same passphrase again:
# Your identification has been saved in minosoft2048.git.ssh
# Your public key has been saved in minosoft2048.git.ssh.pub
# The key fingerprint is:
# SHA256:KtYwzHLuK2G5V4h9tm2QiDzbW1O4wRD1kFHeAIBTAf4 minosoft2048@github
# The key's randomart image is:
# +---[RSA 4096]----+
# |  .+=+==o        |
# | .o  ..+ o       |
# |  ...   o .      |
# |   + o .         |
# | ..=Eo+.S        |
# |  O+++*=         |
# | . *++*+         |
# |  +ooo..o        |
# |   o+o .         |
# +----[SHA256]-----+
eval "$(ssh-agent -s)"
# Agent pid 68640
ssh-add ~/.ssh/minosoft2048.git.ssh
# Identity added: /home/kali/.ssh/minosoft2048.git.ssh (minosoft2048@github)
nano ~/.ssh/config
# Paste that:
#
#Host github.com
#  User git
#  HostName github.com
#  IdentityFile ~/.ssh/minosoft2048.git.ssh
#  AddKeysToAgent yes
ssh -T git@github.com
# Yes

#
git clone git@github.com:minosoft-fr/minosoft-web-site

# local commit
git init
git remote add origin https://github.com/minosoft-fr/minosoft-web-site
git add .
git config --global user.name "minosoft2048"
git commit -m "minosoft Jekyll - Initial commit"

#
git remote set-url origin git@github.com:minosoft-fr/minosoft-web-site

# push to GitHub
git push -u origin master

# https://ton-utilisateur.github.io/nom-du-repo/
# https://minosoft-fr.github.io/minosoft-web-site/
