# terraform {
#   backend "s3" {
#     bucket = "asruiz-remote-backend"
#     key    = "9-remote-state/terraform.tfstate"
#     region = "us-east-1"
#     dynamodb_table = "terraform-lock"
#   }
# }

# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "5.12.0"
#     }
#   }
# }

provider "aws" {
  region = "us-east-1"
}