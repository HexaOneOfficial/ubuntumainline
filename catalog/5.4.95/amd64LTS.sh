# downloads linux and linux headers
mkdir /tmp/ubuntukernel5.4.95
cd /tmp/ubuntukernel5.4.95
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.95/amd64/linux-headers-5.4.95-050495-generic_5.4.95-050495.202102032337_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.95/amd64/linux-headers-5.4.95-050495_5.4.95-050495.202102032337_all.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.95/amd64/linux-image-unsigned-5.4.95-050495-generic_5.4.95-050495.202102032337_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.95/amd64/linux-modules-5.4.95-050495-generic_5.4.95-050495.202102032337_amd64.deb
sudo dpkg -i *.deb
cd
rm -r /tmp/ubuntukernel5.4.95
