output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "aws_availability_zones" {
  value = data.aws_availability_zones.aws_availability_zones.names
}
output "private_subnet_id" {
  value = [
    for subnet in module.create_private_subnets: "Subnet id is ${subnet.subnet_id}"
  ]
}
output "public_subnet_id" {
  value = [
    for subnet in module.create_public_subnets: "Subnet id is ${subnet.subnet_id}"
  ]
}
output "security_group_id" {
  value = module.securitygroup.id
}
