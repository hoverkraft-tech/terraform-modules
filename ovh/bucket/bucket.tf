resource "ovh_cloud_project_storage" "storage" {
  name         = var.name
  service_name = var.cloud_project_id
  region_name  = var.region_name
  owner_id     = var.owner_id != "" ? var.owner_id : null
  versioning = var.versioning_enabled ? {
    status = "enabled"
  } : null
  encryption = var.encryption_enabled ? {
    sse_algorithm = "AES256"
  } : null
}
