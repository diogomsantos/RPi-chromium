./helpers/ginstall-ytdl
sudo -s <<EOF
apt-get install omxplayer -y
if [ ! -d /etc/chromium-browser ]; then
  chmod +x install-chromium.sh
  ./install-chromium.sh
fi
cp helpers/* /usr/local/bin
cp install-chromium.sh /usr/bin/
cp native/run_omxplayer.py /usr/bin/run_omxplayer.py
mkdir /etc/chromium-browser/native-messaging-hosts
cp native/run_omx.json /etc/chromium-browser/native-messaging-hosts/run_omx.json
chmod +x /usr/bin/run_omxplayer.py
echo "Done! Now install the RPi-youtube extension."
EOF
