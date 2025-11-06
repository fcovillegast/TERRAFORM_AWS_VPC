module "vpc" {
  # source  = "terraform-aws-modules/vpc/aws"
  # version = "5.21.0"
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-vpc?ref=7c1f791efd61f326ed6102d564d1a65d1eceedf0"

  name = "${var.name}"

  azs = var.azs
  cidr = var.cidr
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway  = var.enable_vpn_gateway
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  database_subnets    = var.database_subnets
  elasticache_subnets = var.elasticache_subnets

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  tags = {
    Terraform = "true"
    Environment = var.env
    Name = "${var.name}-vpc"
    Type = "VPC"
  }
}