#!/bin/bash

# Mendeteksi sistem operasi
if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" = "debian" ] && [ "$VERSION_ID" = "10" ]; then
        # Backup sources.list
        sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

        # Edit sources.list for Debian 10
        sudo cat <<EOL > /etc/apt/sources.list
        # Debian 10
        deb http://kartolo.sby.datautama.net.id/debian/ buster main contrib non-free
        deb http://kartolo.sby.datautama.net.id/debian/ buster-updates main contrib non-free
        deb http://kartolo.sby.datautama.net.id/debian-security/ buster/updates main contrib non-free
        EOL

        # Update package list
        sudo apt update
    elif [ "$ID" = "ubuntu" ] && [ "$VERSION_ID" = "20.04" ]; then
        # Backup sources.list
        sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

        # Edit sources.list for Ubuntu 20.04
        sudo cat <<EOL > /etc/apt/sources.list
        # Ubuntu 20.04
        deb http://kartolo.sby.datautama.net.id/ubuntu/ focal main restricted universe multiverse
        deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-updates main restricted universe multiverse
        deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-security main restricted universe multiverse
        deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-backports main restricted universe multiverse
        deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-proposed main restricted universe multiverse
        EOL

        # Update package list
        sudo apt update
    else
        echo "Sistem operasi tidak didukung."
        exit 1
    fi
else
    echo "File /etc/os-release tidak ditemukan."
    exit 1
fi
