sudo apt update
sudo apt install openjdk-11-jdk -y
# sleep 90
# metadata = {
#     startup_script = <<SCRIPT
#         #!/bin/bash
#         sudo apt update
#         sudo apt install openjdk-11-jdk -y
#         curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
#         echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]  https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
#         sudo apt update
#         sudo apt install jenkins -y 
#         sudo systemctl status jenkins
#         SCRIPT
#   }
