resource "aws_instance" "myec2" {
  ami           = "ami-08a52ddb321b32a8c"
  instance_type = var.instance_type
  key_name      = "devops"

  security_groups = ["default"]
}
