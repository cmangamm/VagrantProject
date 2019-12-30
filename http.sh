yum -y install httpd
cd /var/www/html

touch cisco.txt
touch chandra.txt

#Rename the welcome.conf file to not to display the apache welcome screen and display customized webpages
cd /etc/httpd/conf.d/
mv welcome.conf welcome.conf_1

systemctl restart httpd

yum -y install git

#Enabled PasswordAuthentication to login via passowrd
sed -i 's/PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config

systemctl restart sshd