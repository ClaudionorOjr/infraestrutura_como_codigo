#!/bin/bash

echo "Iniciando criação de infraestrutura"

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /secretariado

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VENDAS
groupadd GRP_SEC

echo "Criando usuários..."

echo "Setor administrativo..."
useradd carlos -m -c "Carlos do setor Administrativo" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt 1234)
passwd carlos -e
useradd maria -m -c "Maria do setor Administrativo" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt 1234)
passwd maria -e
useradd joao -m -c "João do setor Administrativo" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt 1234)
passwd joao -e

echo "Setor de vendas..."
useradd debora -m -c "Débora do setor de Vendas" -s /bin/bash -G GRP_VENDAS -p $(openssl passwd -crypt 1234)
passwd debora -e
useradd sebastiana -m -c "Sebastiana do setor de Vendas" -s /bin/bash -G GRP_VENDAS -p $(openssl passwd -crypt 1234)
passwd sebastiana -e
useradd roberto -m -c "Roberto do setor de Vendas" -s /bin/bash -G GRP_VENDAS -p $(openssl passwd -crypt 1234)
passwd roberto -e

echo "Setor de secretariado..."
useradd josefina -m -c "Josefina do sertor de Secretariado" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt 1234)
passwd josefina -e
useradd amanda -m -c "Amanda do sertor de Secretariado" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt 1234)
passwd amanda -e
useradd rogerio -m -c "Rogério do sertor de Secretariado" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt 1234)
passwd rogerio -e

echo "Cada novo usuário deverá realizar alteração da senha padrão no primeiro acesso"

echo "Atribuindo permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VENDAS /vendas
chown root:GRP_SEC /secretariado

chmod 777 /publico
chmod 770 /adm
chmod 770 /vendas
chmod 770 /secretariado

echo "Infraestrutura concluída 🔧"
