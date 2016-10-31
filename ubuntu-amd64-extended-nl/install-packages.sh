# prevent installation suggested and recommended packages
if [ ! -e /etc/apt/apt.conf ]
then
    echo '#custom begin' > /etc/apt/apt.conf
    echo 'APT::Install-Recommends "false";' >> /etc/apt/apt.conf
    echo 'APT::Install-Suggests "false";' >> /etc/apt/apt.conf
    echo '#custom end' >> /etc/apt/apt.conf
fi

# update system
apt-get update

# upgrade system
apt-get -y upgrade
apt-get -y dist-upgrade

# general system tools
apt-get -y install tree fdupes vim nmap unattended-upgrades

# clean apt cache
apt-get clean
