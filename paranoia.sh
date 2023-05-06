#!/bin/sh

#rm -rf /var/cache/apt/*

dpkg -l | grep "[0-9.]\+" | sed -e "s/[i ]\+\([a-z-]\+\).*/yes | apt-get reinstall \1/" | bash



