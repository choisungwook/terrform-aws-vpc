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
