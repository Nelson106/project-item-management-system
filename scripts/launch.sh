#!/bin/bash
sudo echo "Hola"
#git clone https://github.com/veraivan/project-item-management-system.git
sudo apt-get install python-django
sudo apt-get install python3-pip
sudo apt-get install python3-dev
sudo apt-get install postgresql postgresql-contrib
sudo echo "Bienvenido"
sudo apt-get install postgresql
sudo apt-get install python-psycopg2
sudo apt-get install libpq-dev
echo "INSTALACION"
sudo apt-get install virtualenv
echo "CREACIONN"
virtualenv -p /usr/bin/python3.6 ../../is2_env

echo "\n\n\nACTIVACION\n\n\n"
#ln -s is2_env/bin/activate
source ../../../is2_env/bin/activate
pip list
pip install -r requirements.txt
pip list
cd project-item-management-system
#deactivate
#rm -rf is2_env/

echo "Se crea la base de datos"
sudo -u postgres psql -c 'create database db_proyecto;'
sudo -u postgres psql -c '\x' -c "ALTER USER postgres WITH PASSWORD 'postgres';"