resource "ovh_cloud_project_network_private_subnet" "subnet" {
  service_name = var.cloud_project_id
  network_id   = var.network_id
  region       = var.region
  network      = var.network
  start        = var.start
  end          = var.end
  dhcp         = var.dhcp
  no_gateway   = var.no_gateway
}
