#! /usr/bin/env bash

while [[ $# -gt 0 ]]; do
  PROG_ARGS+=("${1}")
  case "${1}" in
    -amd|--amd64)
      mkdir /tmp/ubuntukernel5.4.98
      cd /tmp/ubuntukernel5.4.98
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.98/amd64/linux-headers-5.4.98-050498-generic_5.4.98-050498.202102131336_amd64.deb
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.98/amd64/linux-headers-5.4.98-050498_5.4.98-050498.202102131336_all.deb
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.98/amd64/linux-image-unsigned-5.4.98-050498-generic_5.4.98-050498.202102131336_amd64.deb
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.98/amd64/linux-modules-5.4.98-050498-generic_5.4.98-050498.202102131336_amd64.deb
      sudo dpkg -i *.deb
      cd
      rm -r /tmp/ubuntukernel5.4.98
      if [ -f "/boot/initrd.img-5.4.98-050498-generic" ] 
      then
          echo linux 5.4.98 is successfully installed!
      else
          echo an error occurred while installing
      fi    
      break
      ;;
    -arm|--arm64)
      mkdir /tmp/ubuntukernel5.4.98
      cd /tmp/ubuntukernel5.4.98
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.98/arm64/linux-headers-5.4.98-050498-generic_5.4.98-050498.202102131336_arm64.deb
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.98/arm64/linux-image-unsigned-5.4.98-050498-generic_5.4.98-050498.202102131336_arm64.deb
      wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.98/arm64/linux-modules-5.4.98-050498-generic_5.4.98-050498.202102131336_arm64.deb
      sudo dpkg -i *.deb
      cd
      rm -r /tmp/ubuntukernel5.4.98
      break
      ;;      
    -r|--remove)
      echo only remove kernel if you have a newer one!
      sleep 2
      sudo apt remove linux-headers-5.4.98-050498
      sudo apt remove linux-image-unsigned-5.4.98-050498-generic 
      sudo apt remove linux-modules-5.4.98-050498-generic
      if [ -f "/boot/initrd.img-5.4.98-050498-generic" ] 
      then
          echo linux 5.4.98 is successfully removed!
      else
          echo an error occurred while removing linux 5.4.98
      fi    
      break
      ;;            
        esac
done
