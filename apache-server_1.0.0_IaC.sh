#!/bin/bash
#

echo -e "\nAtualizando o servidor Ubuntu...\n"
apt-get update
apt-get upgrade -y 


echo -e "\nInstalando o servidor Apache...\n"
apt-get install apache2 -y
# shutdown -r now


echo -e "\nInstalar o pacote para descompactação de arquivos Unzip...\n"
apt-get install unzip -y


echo -e "\nBaixando e descompactando os recursos para o website na pasta /tmp...\n"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip


echo -e "\nGravando recursos do website na pasta do servidor /var/www/html...\n"
cp -R ./linux-site-dio-main/* /var/www/html


echo -e "\nFinalizado!\n"


