# customrepo
Custom repo for Hacking

# Kali: Fuck this broken my Qubes debian?


<b>sudo echo "deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" | sudo tee /etc/apt/sources.list</br>
<b>sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6</br>


# Parrot: 

nano /etc/apt/sources.list.d

<b>deb https://deb.parrot.sh/parrot/ parrot main contrib non-free</br>
<b>#deb-src https://deb.parrot.sh/parrot/ parrot main contrib non-free</br>
<b>deb https://deb.parrot.sh/parrot/ parrot-security main contrib non-free</br>
<b>#deb-src https://deb.parrot.sh/parrot/ parrot-security main contrib non-free</br>
<b>deb https://deb.parrot.sh/parrot parrot-backports main contrib non-free</br>
<b>#deb-src https://deb.parrot.sh/parrot parrot-backports main contrib non-free</br>


# Loki net: 

<b>sudo curl --proxy http://127.0.0.1:8082 -so /etc/apt/trusted.gpg.d/oxen.gpg https://deb.oxen.io/pub.gpg</br>
<b>echo "deb https://deb.oxen.io $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/oxen.list</br>
<b>sudo apt-get update -y</br>
<b>sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C4992CE7A88D4262</br>

</br>sudo apt-get update -y</br>
<br>sudo apt install lokinet-gui resolvconf</br>
<br> nano /var/lib/lokinet/lokinet.ini</br>
<br>exit-node=exit.loki</br>

<br>systemctl enable lokinet</br>
<br>sudo nano /etc/resolvconf/resolv.conf.d/head</br>
<br>nameserver 127.3.2.1</br>
<br>sudo resolvconf -u or sudo dpkg-reconfigure resolvconf </br>
