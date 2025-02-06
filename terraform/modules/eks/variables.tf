variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the cluster will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of private subnets for EKS worker nodes"
  type        = list(string)
}

variable "eks_version" {
  description = "Kubernetes version for EKS"
  type        = string
  default     = "1.28"
}

variable "node_group_size" {
  description = "Desired number of nodes"
  type        = number
  default     = 2
}

variable "node_group_min_size" {
  description = "Minimum number of nodes"
  type        = number
  default     = 1
}

variable "node_group_max_size" {
  description = "Maximum number of nodes"
  type        = number
  default     = 3
}

variable "node_instance_type" {
  description = "Instance type for worker nodes"
  type        = string
  default     = "t3.medium"
}
