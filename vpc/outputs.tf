output "vpc_id" {
  value       = aws_vpc.main.id
  description = "vpc id"
}

output "public_subnet_ids" {
  description = "public subnet id"
  value = {
    for key, subnet in aws_subnet.public: key => subnet.id
  }
}