name = "lordcarter_prod_vpc"
vpc_cidr = "10.0.0.0/16"
azs_list = ["ca-central-1a", "ca-central-1b"]
private_subnets_list = ["10.0.1.0/24","10.0.2.0/24"]
public_subnets_list = ["10.0.3.0/24","10.0.4.0/24"]
enable_nat_gateway = true
env = "dev"
