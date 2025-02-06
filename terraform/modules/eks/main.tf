module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.28"

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  enable_irsa = true

  eks_managed_node_groups = {
    eks_nodes = {
      desired_size   = var.node_group_size
      max_size       = var.node_group_max_size
      min_size       = var.node_group_min_size
      instance_types = [var.node_instance_type]
    }
  }

  tags = {
    Name = var.cluster_name
  }
}
