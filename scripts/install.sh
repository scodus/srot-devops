
# PHP Setup:
#-- php
sudo apt upgrade
sudo apt install ca-certificates apt-transport-https software-properties-common lsb-release -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt upgrade
sudo apt install -y php8.2 php8.2-cli php8.2-fpm php8.2-mysql php8.2-pgsql php8.2-sqlite3 php8.2-curl php8.2-gd php8.2-mbstring php8.2-xml php8.2-zip php8.2-bcmath php8.2-intl

#-- composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
sudo su
rm composer-setup.php
#-- increase php limit/memory:
sudo nano /etc/php/8.2/fpm/php.ini

# Docker Setup:
-- From official website

# Persona DB
sudo apt update
sudo dpkg -i percona-release_latest.noble_all.deb
wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
sudo dpkg -i percona-release_latest.noble_all.deb
sudo percona-release setup ps80
sudo apt update
sudo apt install -y percona-server-server
sudo systemctl status mysql
sudo systemctl start mysql
sudo systemctl enable mysql
mysql --version
# use for production db
sudo mysql_secure_installation
# verify login access
mysql -u root -p
SHOW DATABASES;
#Create User:
CREATE USER 'scodus'@'%' IDENTIFIED BY 'Scodus@2025';
GRANT ALL PRIVILEGES ON *.* TO 'scodus'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'scodus'@'%';
FLUSH PRIVILEGES;



# SSH Tunnel
sudo nano /usr/local/bin/mysql_tunnel.sh
/** Contents
#!/bin/bash
ssh -N -L 0.0.0.0:3307:192.168.03:3306 user@192.168.0.3
*/


# NPM user
CREATE DATABSE npm;
CREATE USER 'npm_user'@'%' IDENTIFIED BY 'Npmuser@2025';
GRANT ALL PRIVILEGES ON npm.* TO 'npm_user'@'%';
FLUSH PRIVILEGES;