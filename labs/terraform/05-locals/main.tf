resource "aws_instance" "app-dev" {
  ami           = "ami-08a52ddb321b32a8c"
  instance_type = "t2.micro"
  tags = local.common_tags
}

resource "aws_instance" "db-dev" {
  ami           = "ami-08a52ddb321b32a8c"
  instance_type = "t2.micro"
  tags = local.common_tags
}
