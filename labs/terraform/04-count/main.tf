# resource "aws_instance" "myec2-1" {
#   ami           = "ami-08a52ddb321b32a8c"
#   instance_type = "t2.micro"
# }

# resource "aws_instance" "myec2-2" {
#   ami           = "ami-08a52ddb321b32a8c"
#   instance_type = "t2.micro"
# }

# resource "aws_instance" "myec2-3" {
#   ami           = "ami-08a52ddb321b32a8c"
#   instance_type = "t2.micro"
# }

resource "aws_instance" "ec2" {
  count         = 3
  ami           = "ami-08a52ddb321b32a8c"
  instance_type = "t2.micro"
}

# resource "aws_iam_user" "user" {
#   count = 3
#   name  = "user-${count.index}"
# }

resource "aws_iam_user" "user" {
  count = 2
  name  = var.names[count.index]
}
