terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  # profile = "default"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  key_name      = "devops-course"

  tags = {
    Name = "ec2-terraform"
  }

}

resource "aws_s3_bucket" "name" {
  bucket = "devops-course-2024-c3-2"
}
