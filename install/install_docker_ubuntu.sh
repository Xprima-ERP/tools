#!/usr/bin/env bash

#####################################################################
# Install latest Docker Ubuntu package.
#sudo apt-get update
#sudo apt-get install docker.io
#####################################################################

##########################################################################################################
# Install lastest package from editor's repo.
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install -y lxc-docker
#########################################################################################################
