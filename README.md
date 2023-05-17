# Qubes-config 

using qubes.3isec.org or ftp.qubes-os.org to download</br> 

 You then copy the rpm from <appvm> where you downloaded it, to dom0:

[dom0] qvm-run -p 'appvm' 'cat /path/to/rpm' > mytemplate.rpm

Then install the rpm in dom0:

[dom0] sudo dnf install mytemplate.rpm


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

<b>sudo apt-get update -y</br>
<b>sudo apt install lokinet-gui resolvconf</br>
<b> nano /var/lib/lokinet/lokinet.ini</br>
<b>exit-node=exit.loki</br>

<b>sudo systemctl enable lokinet</br>
<b>sudo nano /etc/resolvconf/resolv.conf.d/head</br>
<b>nameserver 127.3.2.1</br>
<b>sudo resolvconf -u or sudo dpkg-reconfigure resolvconf</br>
<b>-- then just sudo dpkg-reconfigure resolvconf</br>

 #Google drive
 
 <b>sudo apt install gnome-control-center gnome-online-accounts</be>
 <b>XDG_CURRENT_DESKTOP=XFCE gnome-control-center</br>
 
 #Screensaver
 
 <b>https://forum.qubes-os.org/t/default-screensaver-can-i-change-the-image-back-to-the-old-one/17573/3<b>
  
  #screenshare
  <b>https://github.com/elliotkillick/qubes-video-companion</br>
  <b>sudo qubes-dom0-update --enablerepo=qubes-dom0-current-testing qubes-video-companion-dom0</br>
