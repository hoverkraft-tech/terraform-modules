resource "ovh_cloud_project_user_s3_policy" "policy" {
  service_name = var.cloud_project_id
  user_id      = var.ovh_user_id
  policy       = var.policy
}
