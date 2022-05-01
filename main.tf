module "vpc" {
  source = "./vpc"
  
  name = "terraform-demo-vpc"
  cidr = "10.0.0.0/16"
  public_subnet = {
    sub-1 = {
        az = "ap-northeast-2a"
        cidr = "10.0.0.0/24"
    }
    sub-2 = {
        az = "ap-northeast-2c"
        cidr = "10.0.1.0/24"
    }
  }
  private_subnet = {
    sub-1 = {
        az = "ap-northeast-2a"
        cidr = "10.0.100.0/24"
    }
    sub-2 = {
        az = "ap-northeast-2c"
        cidr = "10.0.101.0/24"
    }
  }
}
