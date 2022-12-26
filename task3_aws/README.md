Task 3. Prepare the environment via AWS and install LMS Moodle.
--------------------------
I've used AWS free tier EC2 t2.micro with Ubuntu.
![screen](https://user-images.githubusercontent.com/106439773/209528123-7a9c9fb5-ceb7-4c95-ae39-5e8a1ee16c49.png)

Commands used to install Moodle:
```shell
sudo apt-get -y update
sudo apt -y install apache2
sudo apt -y install mysql-client mysql-server
sudo apt -y install php
sudo apt -y install libapache2-mod-php
sudo apt -y install graphviz aspell ghostscript php-pspell php-curl php-gd php-intl php-mysql php-xml php-xmlrpc php-ldap php-zip php-soap php-mbstring git
sudo service apache2 restart
cd /opt
sudo git clone git://git.moodle.org/moodle.git
cd moodle
sudo git branch --track MOODLE_401_STABLE origin/MOODLE_401_STABLE
sudo git checkout MOODLE_401_STABLE
sudo cp -R /opt/moodle /var/www/html/
sudo mkdir /var/moodledata
sudo chown -R www-data /var/moodledata
sudo chmod -R 777 /var/moodledata
sudo chmod -R 0755 /var/www/html/moodle
sudo mysql -u root -proot
CREATE DATABASE moodle DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
create user 'admin'@'localhost' IDENTIFIED BY 'adminpasswd';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,CREATE TEMPORARY TABLES,DROP,INDEX,ALTER ON moodle.* TO 'admin'@'localhost';
quit;
sudo chmod 777 /etc/php/8.1/apache2/php.ini
sudo service apache2 restart
sudo chmod -R 777 /var/www/html/moodle
```
