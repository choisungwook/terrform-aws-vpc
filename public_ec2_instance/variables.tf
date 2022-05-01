variable name {
  type        = string
  default     = "terraform_public_demo_a"
  description = "ec2 name"
}

variable vpc_id {
  type        = string
  default     = ""
  description = "vpcid"
}

variable instance_type {
  type        = string
  default     = "t2.micro"
  description = "instance_type"
}

variable ami {
  type        = string
  default     = "ami-0e9dbc02ff361d8fa"
  description = "ami"
}

variable subnet_id {
  type        = string
  default     = ""
  description = "public subnet_id"
}
