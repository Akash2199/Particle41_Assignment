variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "eks_version" {
  description = "Kubernetes version for EKS"
  type        = string
}

variable "node_group_size" {
  description = "Desired number of nodes"
  type        = number
}

variable "node_group_min_size" {
  description = "Minimum number of nodes"
  type        = number
}

variable "node_group_max_size" {
  description = "Maximum number of nodes"
  type        = number
}

variable "node_instance_type" {
  description = "Instance type for worker nodes"
  type        = string
}

variable "alb_name" {
  description = "Name of the application load balancer"
  type        = string
}

variable "alb_internal" {
  description = "Whether ALB should be internal"
  type        = bool
}
