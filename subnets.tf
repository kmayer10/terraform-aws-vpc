module "create_private_subnets" {
  count = var.private_subnet == true ? local.count : 0
  source = "kmayer10/subnets/aws"
  version = "1.0.1"
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.10.${count.index}.0/24"
  availability_zone = data.aws_availability_zones.aws_availability_zones.names[count.index]
  type = "private"
  name = local.name
}
module "create_public_subnets" {
  count = var.public_subnet == true ? local.count : 0
  source = "kmayer10/subnets/aws"
  version = "1.0.1"
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.10.${count.index+10}.0/24"
  availability_zone = data.aws_availability_zones.aws_availability_zones.names[count.index]
  type = "public"
  name = local.name
}
