# download linux and linux headers
mkdir ~/ubuntukernel5.4.72
cd ~/ubuntukernel5.4.72
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.72/amd64/linux-headers-5.4.72-050472-generic_5.4.72-050472.202010170535_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.72/amd64/linux-headers-5.4.72-050472_5.4.72-050472.202010170535_all.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.72/amd64/linux-image-unsigned-5.4.72-050472-generic_5.4.72-050472.202010170535_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.72/amd64/linux-modules-5.4.72-050472-generic_5.4.72-050472.202010170535_amd64.deb
sudo dpkg -i *.deb
cd
rm -r ~/ubuntukernel5.4.72
