resource "aws_route" "internet_gateway" {
  count = var.internet_gateway == true ? 1 : 0
  route_table_id = aws_vpc.vpc.main_route_table_id
  gateway_id = aws_internet_gateway.aws_internet_gateway[count.index].id
  destination_cidr_block = "0.0.0.0/0"
}
resource "aws_route" "nat_gateway" {
  count = var.nat_gateway == true ? 1 : 0
  route_table_id = aws_route_table.private_subnet_route_table[count.index].id
  gateway_id = aws_nat_gateway.aws_nat_gateway[count.index].id
  destination_cidr_block = "0.0.0.0/0"
}
