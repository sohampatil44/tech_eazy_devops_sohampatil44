provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "instance1" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    key_name = var.key_name
    security_groups = [var.security_group_id]
    user_data = file("${path.module}/scripts/user_data.sh")

    tags = {
        Name = "techeazy-instance"
        Stage = var.stage
    }
  
}