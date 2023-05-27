
echo -e "\e[31Installing nginx\e[0m"
yum install nginx -y
echo -e "\e[32mremoving old content of fronend\e[0m"
rm -rf /usr/share/nginx/html/*
echo -e "\e[33Downloadning frontend content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
echo -e "\e[34Changing the path of downloaded frontend content\e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
echo -e "\e[35Copying the roboshop conf file\e[0m"
#vim /etc/nginx/default.d/roboshop.conf
#cp /github-repos/roboshop-shell/roboshop.conf  vim  /etc/nginx/default.d/roboshop.conf
echo -e "\e[36resart the nginx\e[0m"
systemctl enable nginx
systemctl restart nginx