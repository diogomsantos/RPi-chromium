wget http://www.ubeify.co.uk/udl?v=linux -O ubeify.zip
unzip ubeify.zip
cd ubeify
sh install
cd ..
sudo -s <<EOF
if [ ! -d /etc/chromium-browser ]; then
  chmod +x install-chromium.sh
  ./install-chromium.sh
fi
cp install-chromium.sh /usr/bin/
cp native/run_omxplayer.py /usr/bin/run_omxplayer.py
mkdir /etc/chromium-browser/native-messaging-hosts
cp native/run_omx.json /etc/chromium-browser/native-messaging-hosts/run_omx.json
chmod +x /usr/bin/run_omxplayer.py
echo "Done! Now install the RPi-youtube extension."
EOF
