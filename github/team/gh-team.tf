resource "github_team" "main" {
  name        = var.name
  description = var.description
  privacy     = var.privacy
}
