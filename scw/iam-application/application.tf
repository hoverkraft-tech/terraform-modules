resource "scaleway_iam_application" "app" {
  name            = var.name
  description     = var.description
  organization_id = var.organization_id
}
