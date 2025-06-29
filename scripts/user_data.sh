#!/bin/bash
# Update system
yum update -y

# Install Java and Git
yum install -y java-21-amazon-corretto git

# Switch to ec2-user's home directory
cd /home/ec2-user

# Clone your repo
git clone https://github.com/techeazy-consulting/techeazy-devops.git
cd techeazy-devops

# Make script executable
chmod +x mvnw

# Change ownership
chown -R ec2-user:ec2-user /home/ec2-user/techeazy-devops

# Run the app as ec2-user on port 8080 (unprivileged port)
sudo -u ec2-user bash -c "nohup ./mvnw spring-boot:run -Dspring-boot.run.arguments='--server.port=8080' > app.log 2>&1 &"
