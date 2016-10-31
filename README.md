apt-sources
===========

This project offers practical APT configurations which enable software repositories with Ubuntu, Debian or Raspbian installed. Special configurations are offered for systems based in the Netherlands.

The configurations are in for form of sources.list files. Choose the one that suites your needs the best and copy it to /etc/apt/sources.list and run the commands that can be found in the comments.

The following configurations can be found:
* **ubuntu-amd64-minimal** containing only official Ubuntu repositories for AMD 64-bit architecture
* **ubuntu-amd64-minimal-nl** containing only official Ubuntu mirror repositories for AMD 64-bit architecture in the Netherlands
* **ubuntu-amd64-extended** containing many repositories for Ubuntu for AMD 64-bit architecture
* **ubuntu-amd64-extended-nl** containing many repositories for Ubuntu for AMD 64-bit architecture in the Netherlands
* **ubuntu-armhf-minimal** containing only official Ubuntu repositories for ARM hard float architecture
* **debian-amd64-minimal** containing only official Debian repositories for AMD 64-bit architecture
* **raspbian-armhf-minimal** containing only official Raspbian mirror repositories for ARM hard float architecture
* **raspbian-armhf-extended** containing many repositories for Raspbian for ARM hard float architecture

Note that this might require to delete files in /etc/apt/sources.list.d/ which cover the same repositories.

![Screenshot Ubuntu Software](screenshot-ubuntu-software.png?raw=true "Screenshot Ubuntu Software")

![Screenshot Other Software](screenshot-other-software.png?raw=true "Screenshot Other Software")

![Screenshot Updates](screenshot-updates.png?raw=true "Screenshot Updates")

For rolling upgrades, a system can use a command such as the following:

    curl -sO https://raw.githubusercontent.com/PanderMusubi/apt-sources/master/ubuntu-amd64-minimal-nl/sources.list

To limit the number of packages that are being pulled in while installing, the following can be set. Add the following lines to the file /etc/apt/apt.conf to prevent installation of recommended and suggested packages:

    APT::Install-Recommends "false";
    APT::Install-Suggests "false";

This is best done directly after the initial installation of a system. Note that the depending packages are installed as is intended.

Installing the package `unattended-upgrades` is also practical to do at that moment. By default, it will only install security upgrades. Do this with the command:

    sudo apt-get install unattended-upgrades
    
Fine-tuning can be done by editing the following file:

    /etc/apt/apt.conf.d/50unattended-upgrades 

