variable "name" {
  type = string
  default = "thinknyx"
}
variable "internet_gateway" {
  type = bool
  default = false
}
variable "nat_gateway" {
  type = bool
  default = false
}
variable "private_subnet" {
  type = bool
  default = false  
}
variable "public_subnet" {
  type = bool
  default = false  
}
variable "instance_tenancy" {
  type = string
  default = "default"   
}
variable "cidr_block" {
  type = string
  default = "10.10.0.0/16"   
}
variable "ingress" {
  default = [
    {
      cidr_blocks = [ "0.0.0.0/0" ]
      from_port = 22
      to_port = 22
      description = "ssh"
      protocol = "TCP"
    }
  ]
}
