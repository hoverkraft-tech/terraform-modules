resource "ovh_cloud_project_network_private" "vrack" {
  name         = var.name
  service_name = var.project_id
  regions      = var.regions
  vlan_id      = var.vlan_id
}
