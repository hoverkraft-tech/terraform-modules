resource "kubernetes_namespace" "ns" {
  metadata {
    name        = var.name
    labels      = merge(local.interpolated_tags, var.labels)
    annotations = var.annotations
  }

  lifecycle {
    ignore_changes = [
      metadata[0].labels,
      metadata[0].annotations,
    ]
  }
}
