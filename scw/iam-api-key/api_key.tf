resource "scaleway_iam_api_key" "api_key" {
  application_id     = var.application_id
  description        = var.description
  user_id            = var.user_id
  expires_at         = var.expires_at
  default_project_id = var.default_project_id
}
