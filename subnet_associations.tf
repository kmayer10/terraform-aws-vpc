resource "aws_route_table_association" "private_subnets_association" {
  count = var.nat_gateway == true ? local.count : 0
  route_table_id = aws_route_table.private_subnet_route_table[0].id
  subnet_id = module.create_private_subnets[count.index].subnet_id
}
