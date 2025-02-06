variable "vpc_id" {
  description = "VPC ID where ALB will be deployed"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnets for ALB"
  type        = list(string)
}

variable "alb_name" {
  description = "Name of the application load balancer"
  type        = string
  default     = "eks-alb"
}

variable "alb_internal" {
  description = "Whether ALB should be internal"
  type        = bool
  default     = false
}
