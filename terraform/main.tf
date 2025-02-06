provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
  vpc_name           = var.vpc_name
  vpc_cidr           = var.vpc_cidr
  availability_zones = var.availability_zones
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
}

module "eks" {
  source = "./modules/eks"
  cluster_name       = var.cluster_name
  vpc_id             = module.vpc.vpc_id
  subnet_ids         = module.vpc.private_subnets
}

module "alb" {
  source = "./modules/alb"
  vpc_id             = module.vpc.vpc_id
  public_subnets     = module.vpc.public_subnets
}
