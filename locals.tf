locals {
  name = "thinknyx-${var.name}"
  count = length(data.aws_availability_zones.aws_availability_zones.names)
}
