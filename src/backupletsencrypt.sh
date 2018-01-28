#!/bin/bash
date=$(date +%d-%m-%Y)
user=$(whoami)
mkdir -p /home/$user/backups/letsencrypt/$date
sudo cp -bR /etc/letsencrypt/ /home/$user/backups/letsencrypt/$date
sudo tar cf /home/$user/backups/letsencrypt/$date/letsencrypt.bak.tar /home/$user/backups/letsencrypt/$date/letsencrypt
sudo rm -rf /home/$user/backups/letsencrypt/$date/letsencrypt/
sudo chown $user:$user /home/$user/backups/letsencrypt/$date/letsencrypt.bak.tar
echo "Backup tarball can be found at /home/$user/backups/letsencrypt/$date/letsencrypt.bak.tar"
