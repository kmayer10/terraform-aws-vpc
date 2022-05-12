module "securitygroup" {
  source  = "kmayer10/securitygroup/aws"
  version = "1.0.3"
  vpc_id =  aws_vpc.vpc.id
  name = local.name
  ingress = var.ingress
}
