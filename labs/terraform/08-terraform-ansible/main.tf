terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "test2"
}

resource "null_resource" "ansible_provisioner" {
  depends_on = [aws_instance.myec2]

  provisioner "local-exec" {
    command = <<-EOT
      aws ec2 wait instance-running --instance-ids "${aws_instance.myec2.id}" 
      echo "[my_ec2]" > ansible_inventory
      echo "${aws_instance.myec2.public_ip}" >> ansible_inventory
      ansible-playbook -i ansible_inventory playbook.yaml -u ubuntu --private-key /home/andres/private_keys/cert.pem
      rm ansible_inventory
    EOT
  }
}
