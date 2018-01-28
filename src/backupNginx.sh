#!/bin/bash
date=$(date +%d-%m-%Y)
user=$(whoami)
mkdir -p /home/$user/backups/nginx/$date
sudo cp -bR /etc/nginx /home/$user/backups/nginx/$date/
sudo tar cf /home/$user/backups/nginx/$date/nginx.bak.tar /home/$user/backups/nginx/$date/nginx
sudo chown $user:$user /home/$user/backups/nginx/$date/nginx.bak.tar
echo "Backup tarball can be found at /home/$user/backups/nginx/$date/nginx.bak.tar"
