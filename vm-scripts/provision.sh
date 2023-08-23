#!/bin/bash

# Avoid "unable to re-open stdin: No such file or directory" error
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get -y upgrade

echo "---------------- Install basic software ----------------"
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    xfce4 \
    git \
    terminator &> /dev/null

sudo apt-get -y autoremove

echo "---------------- Setup timezone (Italy) and locale (US English) ----------------"
echo "Europe/Rome" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    echo 'LANG="en_US.UTF-8"'>/etc/default/locale && \
    dpkg-reconfigure -f noninteractive locales && \
    update-locale LANG=en_US.UTF-8

echo "---------------- Set 'vagrant' password for 'vagrant' user ----------------"
echo -e "vagrant\nvagrant" | sudo passwd vagrant

echo "---------------- Install Chrome browser ----------------"
pushd /tmp
curl -Lo \
    chrome.deb \
    https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y chrome.deb
popd

echo "---------------- About to reboot this VM ----------------"
