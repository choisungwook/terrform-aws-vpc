module "vpc" {
  source = "./vpc"

  name = "terraform-demo-vpc"
  cidr = "10.0.0.0/16"
  public_subnet = {
    sub-1 = {
      az   = "ap-northeast-2a"
      cidr = "10.0.0.0/24"
    }
    sub-2 = {
      az   = "ap-northeast-2c"
      cidr = "10.0.1.0/24"
    }
  }
  private_subnet = {
    sub-1 = {
      az   = "ap-northeast-2a"
      cidr = "10.0.100.0/24"
    }
    sub-2 = {
      az   = "ap-northeast-2c"
      cidr = "10.0.101.0/24"
    }
  }
}

module "ec2_instance" {
  source     = "./public_ec2_instance"
  depends_on = [module.vpc]

  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_ids["sub-1"]

  name          = var.ec2_instance_name
  instance_type = var.ec2_instance_type
  ami           = "ami-0e9dbc02ff361d8fa" # ubuntu20.04(22220104), hvm-ssd
}

module "s3" {
  source     = "./s3"

  bucket_name = var.bucket_name
}