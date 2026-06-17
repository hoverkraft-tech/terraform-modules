resource "local_file" "main" {
  content  = var.content
  filename = var.filename
}
