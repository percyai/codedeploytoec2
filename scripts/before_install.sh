#!/bin/bash

#download node and npm
sudo yum update -y
su - ec2-user -c "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash"
su - ec2-user -c ". ~/.nvm/nvm.sh"
su - ec2-user -c "nvm install 14.16.0"
su - ec2-user -c "npm install pm2 -g"
sudo yum install git -y

#create our working directory if it doesnt exist
DIR="/home/ec2-user/express-app"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi
