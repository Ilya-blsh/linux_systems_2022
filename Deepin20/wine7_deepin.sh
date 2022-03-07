wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key 

echo 'deb https://dl.winehq.org/wine-builds/debian/ buster main' > /tmp/winehq.list
sudo cp /tmp/winehq.list /etc/apt/sources.list.d/
rm /tmp/winehq.list
sudo apt update -y
wget -nc https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/amd64/libfaudio0_20.01-0~buster_amd64.deb
wget -nc https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/i386/libfaudio0_20.01-0~buster_i386.deb
sudo apt install ./libfaudio0_20.01-0~buster_amd64.deb -y
sudo apt install ./libfaudio0_20.01-0~buster_i386.deb -y
sudo apt install --install-recommends winehq-stable -y

#sudo apt install --install-recommends winehq-staging
#sudo apt install --install-recommends winehq-devel
wine winecfg


sudo apt install zenity -y

cd "${HOME}/Downloads"
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/bin/winetricks

winetricks

#sudo apt remove wine wineticks
