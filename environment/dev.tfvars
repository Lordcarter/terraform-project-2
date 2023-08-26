name = "lordcarter_dev_vpc"
vpc_cidr = "10.0.0.0/16"
azs_list = ["ca-central-1a"]
private_subnets_list = ["10.0.1.0/24"]
public_subnets_list = ["10.0.2.0/24"]
enable_nat_gateway = true
env = "dev"
instance_type = "t2.micro"
