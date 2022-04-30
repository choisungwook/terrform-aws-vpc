resource "aws_vpc" "main" {
  cidr_block = var.cidr

  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "main" {
  for_each = var.subnet
  
  vpc_id     = aws_vpc.main.id
  cidr_block = each.value["cidr"]
  availability_zone = each.value["az"]

  tags = {
    Name = "${var.name}-subnet-${each.key}"
  }
}