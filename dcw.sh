#!/bin/sh
while [ 1 ]; do
wget ftp://root:dreambox@192.168.1.2/tmp/ecm.info
sleep 1
mv ecm.info ecm
chmod 777 ecm
rm -rf ecm.info
sleep 1
cat ecm | grep -i "===== " | sed -e "s/^===== /""/Ig" > ecm.bilgi
cat ecm | grep -i "cw0: " | sed -e "s/^cw0: /""/Ig" > ecm1.test
cat ecm | grep -i "cw1: " | sed -e "s/^cw1: /""/Ig" > ecm2.test
cat ecm1.test | sed 's/  *//g' > ecm1
cat ecm2.test | sed 's/  *//g' > ecm2
cat ecm1 ecm2 | sed "s/  *//g" | sed "s/  *//g" > ecmler
sleep 1
done
