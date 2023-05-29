echo -e "\e[31mCpopying repo file\e[0m"
cp mongo.repo /etc/yum.repos.d/mongo.repo   &>>/tmp/roboshop.log
echo -e "\e[32mInstalling mongo db\e[0m"
yum install mongodb-org -y  &>>/tmp/roboshop.log
echo -e "\e[33mEdit the network gateways\e[0m"
sed -i -e 's/127.0.0.1/0.0.0.0' /etc/mongod.conf
echo -e "\e[34menable the mongod service\e[0m"
systemctl enable mongod  &>>/tmp/roboshop.log
echo -e "\e[35mRestart the mongodb service\e[0m"
systemctl restart mongod  &>>/tmp/roboshop.log