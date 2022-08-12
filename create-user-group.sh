#!/bin/bash

### OBS: EXECUTAR ESSE SCRIPT SOMENTE EM UMA VM ###

echo "CRIANDO DIRETÓRIOS"
echo "-----------------"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "CRIANDO GRUPOS DE USUÁRIOS"
echo "--------------------------"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "CRIANDO USUÁRIOS"
echo "----------------"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "PERMISSÕES DE DIRETÓRIOS"
echo "-----------------"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chown 770 /adm
chown 770 /ven
chown 770 /sec
chown 777 /publico

echo "FINALIZANDO O SCRIPT..."
