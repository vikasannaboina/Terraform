resource "aws_instance" "testing" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = var.instance_type
  #security_groups = "sg-0064dd824cb40e83c"
  #security_groups = ["sg-0064dd824cb40e83c"]
  security_groups = [var.security_groups]
  key_name        = var.key_name
  #user_data = <<EOF
  #! /bin/bash
  #sudo su
  #sudo yum update
  #sudo yum install -y httpd
  #sudo chkconfig httpd on
  #sudo service httpd start
  #echo "<h1>Deployed EC2 With Terraform</h1>" | sudo tee /var/www/html/index.html
  #EOF

  tags = {
    Name = "Linux"
    Env  = "Dev"
  }
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "my-thor-test-bucket"

  tags = {
    Name        = "vikas bucket"
    Environment = "Dev"
  }
}