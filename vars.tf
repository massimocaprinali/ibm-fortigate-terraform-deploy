// Your SSH key
variable "ssh_public_key" {
  default = ""
  description = "Copy in a public ssh key to be used with the FortiGate. Required Value."
}
// Magic Value for Calalog Validation that initlizes terraform with a specific version.
// Only needed in IBM catalog.
variable "TF_VERSION" {
  default     = "0.13"
  description = "Terraform version to be used in validation"
}
// IBM Regions
variable "region" {
  type        = string
  default     = "us-south"
  description = "Deployment Region"

}
// IBM availability zones
variable "zone1" {
  type        = string
  default     = "us-south-1"
  description = "Deployment Zone."

}
// Name will be in the format of cluster_name-RESOURCE-randomSuffix to be easily identifiable.
// Name must be lowercase
variable "cluster_name" {
  type        = string
  default     = "fortigate-terraform"
  description = "Cluster name will be appended by a random Suffix to prevent collisions and allow easier identification."

}
// Random Suffix to avoid name collisions and identify cluster.
resource "random_string" "random_suffix" {
  length           = 4
  special          = true
  override_special = ""
  min_lower        = 4
}

// FortiOS Custom Image ID
// https://docs.fortinet.com/vm/ibm/fortigate/6.4/ibm-cloud-cookbook/6.4.2/992669/deploying-fortigate-vm-on-ibm-cloud
// Deploys 6.4.3 Image
// 6.4.4 available link: cos://us-geo/fortinet/fortigate_byol_644_b1803_GA.qcow2
variable "image" {
  default = "cos://us-geo/fortinet/fortigate_byol_643_b1778_GA.qcow2"
}
//For more details see: https://cloud.ibm.com/docs/account?topic=account-userapikey
variable "ibmcloud_api_key" {
  default = ""
  description = "IBM Gen2 API key."
}
// Default Instance type
// See: https://cloud.ibm.com/docs/vpc?topic=vpc-profiles
variable "profile" {
  default     = "cx2-2x4"
  description = "VM size and family"
}

// Bootstrap configuration file
variable "user_data" {
  type        = string
  default     = "user_data.conf"
  description = "The Custom Bootstrap Data file name."
}
