module "vpc" {
  source = "./module/vpc"
  name = var.name
  vpc_cidr = var.vpc_cidr

  azs_list            = var.azs_list
  private_subnets_list = var.private_subnets_list
  public_subnets_list  = var.public_subnets_list

  enable_nat_gateway = var.enable_nat_gateway
  env = var.env

}

module "ec2_instance" {
  source = "./module/ec2"
  # vpc_cidr = var.vpc_cidr

  # azs_list            = var.azs_list
  # private_subnets_list = var.private_subnets_list
  subnet_id = module.vpc.public_subnet_id[0]
  env = var.env
  instance_type = var.instance_type
}

