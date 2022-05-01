variable ec2_instance_type {
  type        = string
  default     = "t2.micro"
  description = "ec2 instance type"
}

variable ec2_instance_name {
  type        = string
  default     = "terraform_public_demo_a"
  description = "ec2 instance name"
}

variable ec2_instance_ami {
  type        = string
  default     = "ami-0e9dbc02ff361d8fa"
  description = "ec2 instance ami"
}

variable bucket_name {
  type        = string
  default     = ""
  description = "bucket name"
}
