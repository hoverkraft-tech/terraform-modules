resource "ovh_cloud_project_user" "user" {
  description  = var.description
  service_name = var.cloud_project_id
  role_names   = var.ovh_role_names
}
