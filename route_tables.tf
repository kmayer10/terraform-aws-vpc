resource "aws_route_table" "private_subnet_route_table" {
  count = var.nat_gateway == true ? 1 : 0
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = local.name
  }
}
