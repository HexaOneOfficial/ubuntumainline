# downloads linux and linux headers
mkdir /tmp/ubuntukernel5.10
cd /tmp/ubuntukernel5.10
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.10/arm64/linux-headers-5.10.0-051000-generic_5.10.0-051000.202012132330_arm64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.10/arm64/linux-image-unsigned-5.10.0-051000-generic_5.10.0-051000.202012132330_arm64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.10/arm64/linux-modules-5.10.0-051000-generic_5.10.0-051000.202012132330_arm64.deb
sudo dpkg -i *.deb
cd
rm -r /tmp/ubuntukernel5.10
