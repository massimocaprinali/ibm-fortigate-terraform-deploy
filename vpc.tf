# resource "ibm_is_vpc" "vpc1" {
#   name = "${var.cluster_name}-vpc-${random_string.random_suffix.result}"
# }

data "ibm_is_vpc" "vpc1" {
  name = var.vpc
}
data "ibm_is_subnet" "subnet1" {
  name = var.subnet1
}
data "ibm_is_subnet" "subnet2" {
  name = var.subnet2
}
resource "ibm_is_vpc_routing_table" "fgt_route_table" {
  name = "${var.cluster_name}-port1-${random_string.random_suffix.result}"
  vpc  = data.ibm_is_vpc.vpc1.id
}



# // Primary Subnet
# resource "ibm_is_subnet" "subnet1" {
#   name                     = "${var.cluster_name}-primary-subnet-${random_string.random_suffix.result}"
#   vpc                      = ibm_is_vpc.vpc1.id
#   zone                     = var.zone1
#   total_ipv4_address_count = 256
# }
# // Secondary Subnet
# resource "ibm_is_subnet" "subnet2" {
#   name                     = "${var.cluster_name}-secondary-subnet-${random_string.random_suffix.result}"
#   vpc                      = ibm_is_vpc.vpc1.id
#   zone                     = var.zone1
#   total_ipv4_address_count = 256

# }
data "ibm_is_security_group" "fgt_security_group" {
  name = var.security_group
}

# resource "ibm_is_security_group" "fgt_security_group" {
#   name = "${var.cluster_name}-sec-group-${random_string.random_suffix.result}"
#   vpc  = ibm_is_vpc.vpc1.id
# }

# resource "ibm_is_security_group_rule" "fgt_security_group_rule_inbound_all" {
#   group     = ibm_is_security_group.fgt_security_group.id
#   direction = "inbound"
#   remote    = "0.0.0.0/0"
# }

# resource "ibm_is_security_group_rule" "fgt_security_group_rule_outbound_all" {
#   group     = ibm_is_security_group.fgt_security_group.id
#   direction = "outbound"
#   remote    = "0.0.0.0/0"
# }