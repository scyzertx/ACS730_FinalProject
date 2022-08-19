# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.250.0.0/16"
  type        = string
  description = "VPC to host the environment"
}

# Provision public subnets in custom VPC
variable "public_subnet_cidrs" {
  default     = ["10.250.1.0/24", "10.250.2.0/24", "10.250.3.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}
# Provision Private subnets in custom VPC
variable "private_subnet_cidrs" {
  default     = ["10.250.4.0/24", "10.250.5.0/24", "10.250.6.0/24"]
  type        = list(string)
  description = "Private Subnet CIDRs"
}


# Variable to signal the current environment 
variable "env" {
  default     = "Prod"
  type        = string
  description = "Prod Environment"
}

