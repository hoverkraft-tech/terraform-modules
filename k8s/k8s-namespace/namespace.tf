resource "kubernetes_namespace" "ns" {
  metadata {
    name   = var.name
    labels = merge(local.interpolated_tags, var.labels)
  }
}
