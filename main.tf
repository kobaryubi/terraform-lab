provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d03c6e00d5732e28"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

