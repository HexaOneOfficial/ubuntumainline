# download linux and linux headers
mkdir ~/ubuntukernel5.9.3
cd ~/ubuntukernel5.9.3
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9.3/arm64/linux-headers-5.9.3-050903-generic_5.9.3-050903.202011011237_arm64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9.3/arm64/linux-image-unsigned-5.9.3-050903-generic_5.9.3-050903.202011011237_arm64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9.3/arm64/linux-modules-5.9.3-050903-generic_5.9.3-050903.202011011237_arm64.deb
sudo dpkg -i *.deb
cd
rm -r ~/ubuntukernel5.9.3
