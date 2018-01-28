#!/bin/bash
date=$(date +%d-%m-%Y)
mkdir -p /home/eero/backups/nginx/$date
sudo cp -bR /etc/nginx /home/eero/backups/nginx/$date/
sudo tar cf /home/eero/backups/nginx/$date/nginx.bak.tar /home/eero/backups/nginx/$date/nginx
sudo chown eero:eero /home/eero/backups/nginx/$date/nginx.bak.tar
echo "Backup tarball can be found at /home/eero/backups/nginx/$date/nginx.bak.tar"
