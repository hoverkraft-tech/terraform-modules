resource "ovh_cloud_project_gateway" "gateway" {
  service_name = var.cloud_project_id
  name         = var.name
  model        = var.model
  region       = var.region
  network_id   = var.network_uuid
  subnet_id    = var.subnet_id
}
