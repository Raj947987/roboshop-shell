echo -e "\e[31Installing nginx\e[0m"
yum install nginx -y &>>/tmp/roboshop.log

echo -e "\e[32mremoving old App content of fronend\e[0m"
rm -rf /usr/share/nginx/html/* &>>/tmp/roboshop.log

echo -e "\e[33mDownloadning frontend content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip &>>/tmp/roboshop.log

echo -e "\e[34mChanging the path of downloaded frontend content\e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip  &>>/tmp/roboshop.log

echo -e "\e[35mCopying the roboshop conf file\e[0m"
#vim /etc/nginx/default.d/roboshop.conf
cp /home/centos/roboshop-shell/roboshop.conf   /etc/nginx/default.d/roboshop.conf

echo -e "\e[36mresart the nginx\e[0m"
systemctl enable nginx
systemctl restart nginx  &>>/tmp/roboshop.log