#echo -e "\e[31mEnabling the module\e[0m"
#curl -sL https://rpm.nodesource.com/setup_lts.x | bash   &>>/tmp/roboshop.log
#echo -e "\e[32mInstalling node js\e[0m"
#yum install nodejs -y    &>>/tmp/roboshop.log
#useradd roboshop
#mkdir /app
#echo -e "\e[33mRoboshop project downloads to the catalogue file\e[0m"
#curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip  &>>/tmp/roboshop.log
#cd /app
#unzip /tmp/catalogue.zip
#cd /app
#echo -e "\e[34mInstalling npm\e[0m"
#npm install  &>>/tmp/roboshop.log
#echo -e "\e[31mCpopying catalogue service file\e[0m"
#cp /home/centos/roboshop-shell/catalogue.service /etc/systemd/system/catalogue.service   &>>/tmp/roboshop.log
#echo -e "\e[35mDaemon reload\e[0m"
#systemctl daemon-reload
#systemctl enable catalogue
#systemctl restart catalogue
#echo -e "\e[36mCpopying repo file\e[0m"
#cp /home/centos/roboshop-shell/mongo.repo /etc/yum.repos.d/mongo.repo
#echo -e "\e[31mInstalling mongodb shell\e[0m"
#yum install mongodb-org-shell -y   &>>/tmp/roboshop.log
#echo -e "\e[32mCopying the schema\e[0m"
#mongo --host mongodb-dev.gmracademy.in.net </app/schema/catalogue.js   &>>/tmp/roboshop.log
#

source common.sh
component=catalogue

nodejs
mongo_schema_setup