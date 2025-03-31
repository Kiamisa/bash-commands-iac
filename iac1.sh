#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Adding user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd anthony -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_ADM
useradd john -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_VEN
useradd sebastian -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_VEN
useradd robert -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_VEN

useradd daniel -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_SEC
useradd roger -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_SEC

echo "Directories permissions...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Ending..."