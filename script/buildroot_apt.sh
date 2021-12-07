#! /bin/sh
sudo dpkg --add-architecture i386
sudo dpkg --add-architecture riscv64
sudo apt-get update
sudo apt-get purge -q -y snapd lxcfs lxd ubuntu-core-launcher snap-confine
sudo apt-get -q -y install build-essential libncurses5-dev \
			git bzr cvs mercurial subversion libc6-i386 unzip bc
sudo apt-get -q -y autoremove
sudo apt-get -q -y clean