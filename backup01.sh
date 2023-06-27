#!/bin/bash

sudo mkdir /mnt/archive

backup_dirs=" /home /etc/ssh/sshd_config /etc/xrdp /etc/vsftpd.conf /var/log "
dest_dir="/mnt/archive"
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"
echo "Backing up $backup_dirs to $dest_dir/$archive_file"
sudo tar -zcvpf $dest_dir/$archive_file $backup_dirs
echo "Backup finished"
