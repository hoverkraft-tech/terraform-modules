resource "pass_password" "secret" {
  path     = var.path
  data     = var.data
  password = var.password
  yaml     = var.yaml
}
