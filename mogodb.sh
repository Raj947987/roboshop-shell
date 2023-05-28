echo -e "\e[31mCpopying repo file\e[0m"
cp mongo.repo /etc/yum.repos.d/mongo.repo
echo -e "\e[31mInstalling mongo db\e[0m"
yum install mongodb-org -y
echo -e "\e[31mEdit the network gateways\e[0m"
echo -e "\e[31menable the mongod service\e[0m"
systemctl enable mongod
echo -e "\e[31mRestart the mongodb service\e[0m"
systemctl restart mongod