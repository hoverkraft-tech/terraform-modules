resource "local_sensitive_file" "kubeconfig" {
  content  = var.content
  filename = var.filename
}
