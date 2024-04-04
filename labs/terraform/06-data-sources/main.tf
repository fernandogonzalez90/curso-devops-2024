terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

data "aws_security_group" "example_sg" {
    name = "test-data-source"
}

resource "aws_instance" "name" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_security_group.example_sg.id]
}

