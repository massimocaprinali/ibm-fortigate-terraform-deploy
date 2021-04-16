data "ibm_is_vpc" "vpc1" {
  name = var.vpc
}
data "ibm_is_subnet" "subnet1" {
  identifier = var.subnet1
}

data "ibm_is_subnet" "subnet2" {
  identifier = var.subnet2
}
resource "ibm_is_vpc_routing_table" "fgt_route_table" {
  name = "${var.cluster_name}-port1-${random_string.random_suffix.result}"
  vpc  = data.ibm_is_vpc.vpc1.id
}

data "ibm_is_security_group" "fgt_security_group" {
  name = var.security_group
}
