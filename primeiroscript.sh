#!/bin/bash

mkdir /adm
mkdir /publico
mkdir /ven
mkdir /sec


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


useradd irmão -m -s /bin/bash -p $(openssl passwd -crypt Irmão123) -G GRP_ADM
useradd mae -m -s /bin/bash -p $(openssl passwd -crypt Mae123) -G GRP_ADM
useradd pai -m -s /bin/bash -p $(openssl passwd -crypt Pai123) -G GRP_ADM

useradd tio -m -s /bin/bash -p $(openssl passwd -crypt Tio123) -G GRP_VEN
useradd tia -m -s /bin/bash -p $(openssl passwd -crypt Tia123) -G GRP_VEN
useradd primo -m -s /bin/bash -p $(openssl passwd -crypt Primo123) -G GRP_VEN

useradd vo -m -s /bin/bash -p $(openssl passwd -crypt Vo1234) -G GRP_SEC
useradd amigo -m -s /bin/bash -p $(openssl passwd -crypt amigo123) -G GRP_SEC
useradd amiga -m -s /bin/bash -p $(openssl passwd -crypt amiga123) -G GRP_SEC


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


