# downloads linux and linux headers
mkdir /tmp/ubuntukernel5.4.80
cd /tmp/ubuntukernel5.4.80
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.79/arm64/linux-headers-5.4.79-050479-generic_5.4.79-050479.202011221707_arm64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.79/arm64/linux-image-unsigned-5.4.79-050479-generic_5.4.79-050479.202011221707_arm64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.79/arm64/linux-modules-5.4.79-050479-generic_5.4.79-050479.202011221707_arm64.deb
sudo dpkg -i *.deb
cd
rm -r /tmp/ubuntukernel5.4.80
