module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"

  name            = var.vpc_name
  cidr            = var.vpc_cidr
  azs             = var.availability_zones
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}
