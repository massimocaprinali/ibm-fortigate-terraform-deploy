# Your SSH key
variable "ssh_public_key" {
  default = ""
}

// IBM Regions
variable "region" {
  type    = string
  default = "us-south"
}
// IBM availability zones
variable "zone1" {
  type    = string
  default = "us-south-1"
}
// Name will be in the format of cluster_name-RESOURCE-randomSuffix to be easily identifiable.
// Name must be lowercase
variable "cluster_name" {
  type    = string
  default = "fortigate-terraform"
}
// Random Suffix to avoid name collisions and identify cluster.
resource "random_string" "random_suffix" {
  length           = 4
  special          = true
  override_special = ""
  min_lower        = 4
}

variable "primary_subnet" {
  type    = string
  default = "172.16.0.0/24"
}

variable "secondary_subnet" {
  type    = string
  default = "172.16.8.0/24"
}

// FortiOS Custom Image ID
// https://docs.fortinet.com/vm/ibm/fortigate/6.4/ibm-cloud-cookbook/6.4.2/992669/deploying-fortigate-vm-on-ibm-cloud
// Deploys 6.4.3 Image
// 6.4.4 available link: cos://us-geo/fortinet/fortigate_byol_644_b1803_GA.qcow2
variable "image" {
  default = "cos://us-geo/fortinet/fortigate_byol_643_b1778_GA.qcow2"
}
variable "ibmcloud_api_key" {
  default = ""
}
// Default Instance type
// See: https://cloud.ibm.com/docs/vpc?topic=vpc-profiles
variable "profile" {
  default = "cx2-2x4"
}

// Bootstrap configuration file
variable "user_data" {
  type    = string
  default = "user_data.conf"
}

// FortiGate License. When Providing via Schematics ensure this is a sensitive feild.
variable "license" {
  type    = string
  default = ""
}
