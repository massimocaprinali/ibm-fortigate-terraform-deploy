# Generating random ID
resource "random_uuid" "test" { }

resource "ibm_is_image" "vnf_custom_image" {
 // depends_on       = ["random_uuid.test"]
  href             = var.image
  name             = "${var.cluster_name}-fortigate-custom-image-${random_string.random_suffix.result}"
  operating_system = "fortigate"
//  resource_group = "${data.ibm_is_subnet.vnf_subnet.resource_group}"

  timeouts {
    create = "30m"
    delete = "10m"
  }
}
