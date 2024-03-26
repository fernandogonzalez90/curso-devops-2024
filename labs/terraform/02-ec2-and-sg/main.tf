terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
  }
  required_version = "1.7.5"
}

provider "aws" {
  region = "us-east-1"
  # profile = "default"
}

resource "aws_security_group" "my_sg" {
  name = "my-test-sg"
  
  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }    

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  key_name      = "devops-course"
  vpc_security_group_ids = [ aws_security_group.my_sg.id ]
  
  tags = {
    Name = "ec2-terraform"
  }

}