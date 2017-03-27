#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install qemu-kvm libvirt-bin bridge-utils virt-manager -y
sudo adduser $(whoami) libvirtd


# Reboot!

# List virtual machines
# virsh list --all
