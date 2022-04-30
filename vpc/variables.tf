variable "name" {
  type        = string
  default     = "example-vpc"
  description = "vpc 이름"
}

variable "cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "VPC cidr"
}

variable  "subnet" {
  type        = map
  default     = {
    sub-1 = {
        az = "ap-northeast-2a"
        cidr = "10.0.0.0/24"
    }
    sub-2 = {
        az = "ap-northeast-2c"
        cidr = "10.0.1.0/24"
    }
  }
  description = "description"
}
