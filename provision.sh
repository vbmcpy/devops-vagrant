#!/bin/bash

echo "Instalando Apache e Configurando"
echo "Este arquivo é executado apenas na criação da Máquina"
yum install -y httpd > /dev/null 2>&1
cp -R "/vagrant/html/"* /var/www/html/
service httpd start
echo "Meu IP $(ip a | awk '/inet / {print $2}' | grep -v '127.0.0.1' | cut -d/ -f1)"

