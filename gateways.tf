resource "aws_internet_gateway" "aws_internet_gateway" {
  count = var.internet_gateway == true ? 1 : 0
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = local.name
  }
}

resource "aws_eip" "nat_gateway_eip" {
  count = var.nat_gateway == true ? 1 : 0
  tags = {
    Name = local.name
  }
}

resource "aws_nat_gateway" "aws_nat_gateway" {
  count = var.nat_gateway == true ? 1 : 0
  allocation_id = aws_eip.nat_gateway_eip[count.index].id
  subnet_id = module.create_public_subnets[0].subnet_id
  tags = {
    Name = local.name
  }
}
