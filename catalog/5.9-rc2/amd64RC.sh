# download linux and linux headers
mkdir ~/ubuntukernel5.9-rc2
cd ~/ubuntukernel5.9-rc2
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9-rc2/amd64/linux-headers-5.9.0-050900rc2-generic_5.9.0-050900rc2.202008232232_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9-rc2/amd64/linux-headers-5.9.0-050900rc2_5.9.0-050900rc2.202008232232_all.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9-rc2/amd64/linux-image-unsigned-5.9.0-050900rc2-generic_5.9.0-050900rc2.202008232232_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9-rc2/amd64/linux-modules-5.9.0-050900rc2-generic_5.9.0-050900rc2.202008232232_amd64.deb
sudo dpkg -i *.deb
cd
rm -r ~/ubuntukernel5.9-rc2
# y/n prompt
echo -n "do you want to reboot (y/n)? "
old_stty_cfg=$(stty -g)
stty raw -echo ; answer=$(head -c 1) ; stty $old_stty_cfg 
if echo "$answer" | grep -iq "^y" ;then
    sudo reboot
else
    exit
fi
