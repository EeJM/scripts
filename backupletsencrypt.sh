#!/bin/bash
date=$(date +%d-%m-%Y)
mkdir /home/eero/backups/letsencrypt/$date
sudo cp -bR /etc/letsencrypt/ /home/eero/backups/letsencrypt/$date
sudo tar cf /home/eero/backups/letsencrypt/$date/letsencrypt.bak.tar /home/eero/backups/letsencrypt/$date/letsencrypt
sudo chown eero:eero /home/eero/backups/letsencrypt/$date/letsencrypt.bak.tar
echo "Backup tarball can be found at /home/eero/backups/letsencrypt/$date/letsencrypt.bak.tar"
