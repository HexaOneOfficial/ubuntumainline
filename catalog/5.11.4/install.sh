#! /usr/bin/env bash

while [[ $# -gt 0 ]]; do
  PROG_ARGS+=("${1}")
  case "${1}" in
    -amd|--amd64)
      mkdir /tmp/ubuntukernel5.11.4
      cd /tmp/ubuntukernel5.11.4
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.4/amd64/linux-headers-5.11.4-051104-generic_5.11.4-051104.202103071231_amd64.deb
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.4/amd64/linux-headers-5.11.4-051104_5.11.4-051104.202103071231_all.deb
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.4/amd64/linux-image-unsigned-5.11.4-051104-generic_5.11.4-051104.202103071231_amd64.deb
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.4/amd64/linux-modules-5.11.4-051104-generic_5.11.4-051104.202103071231_amd64.deb
      sudo dpkg -i *.deb
      cd
      rm -r /tmp/ubuntukernel5.11.4
      if [ -f "/boot/initrd.img-5.11.4-051104-generic" ] 
      then
          echo linux 5.11.4 is successfully installed!
      else
          echo an error occurred while installing
      fi    
      break
      ;;
    -arm|--arm64)
      mkdir /tmp/ubuntukernel5.11.4
      cd /tmp/ubuntukernel5.11.4
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.4/arm64/linux-headers-5.11.4-051104-generic_5.11.4-051104.202103071231_arm64.deb
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.4/arm64/linux-image-unsigned-5.11.4-051104-generic_5.11.4-051104.202103071231_arm64.deb
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11.4/arm64/linux-modules-5.11.4-051104-generic_5.11.4-051104.202103071231_arm64.deb
      sudo dpkg -i *.deb
      cd
      rm -r /tmp/ubuntukernel5.11.4
      break
      ;;      
    -r|--remove)
      echo only remove kernel if you have a newer one!
      sleep 2
      sudo apt remove linux-headers-5.11.4-051104
      sudo apt remove linux-image-unsigned-5.11.4-051104-generic 
      sudo apt remove linux-modules-5.11.4-051104-generic
      if [ -f "/boot/initrd.img-5.11.4-051104-generic" ] 
      then
          echo linux 5.11.4 is successfully removed!
      else
          echo an error occurred while removing linux 5.11.4
      fi    
      break
      ;;            
        esac
done
