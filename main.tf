module "vpc" {
  source = "./vpc"
  
  name = "demo-vpc"
  cidr = "10.0.0.0/16"
}
