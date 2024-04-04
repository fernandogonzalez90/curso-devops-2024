module "my_ec2" {
  source        = "../../modules/ec2"
  instance_type = "t3.micro"
  #security_groups = [module.security-group.id] Esto funciona si el modulo de ec2 soporta este parametro
}

module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.2"
  name    = "my_sg"
}
