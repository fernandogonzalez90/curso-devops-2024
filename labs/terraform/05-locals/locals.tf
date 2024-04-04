locals {
  common_tags = {
    Owner   = "DevOps team"
    service = "backend"
  }
  expresion = var.names[0]
}
