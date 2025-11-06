variable "name" {
    type = string
    description = "Vpc name"
}

variable environment {
    type = string
    description = "The environment name"
}

variable azs {
    type = list(string)
    default = ["sa-east-1a","sa-east-1b","sa-east-1c"]
    description = "The zones"
}

variable cidr {
    type = string
    default = "10.0.0.0/16"
    description = "The vpc cidr"
}

variable "private_subnets" {
    type = list(string)
    default = []
    description = "private subnets"
}

variable "public_subnets" {
  type = list(string)
  default = []
  description = "public subnets"
}

variable enable_nat_gateway {
    type = bool
    default = false
    description = "Enable nat gateway"
}

variable enable_vpn_gateway {
    type = bool
    default = false
    description = "Enable vpn gateway"
}

variable enable_dns_hostnames {
    type = bool
    default = true
    description = "Enable dns hostname"
}

variable enable_dns_support {
    type = bool
    default = true
    description = "Enable dns support"
}

variable database_subnets {
  type = list(string)
  default = []
  description = "database_subnets"
}

variable elasticache_subnets {
  type = list(string)
  default = []
  description = "database_subnets"
}