resource "kubernetes_namespace" "ns" {
  count = var.ignore_metadata_changes ? 0 : 1

  metadata {
    name        = var.name
    labels      = merge(local.interpolated_tags, var.labels)
    annotations = var.annotations
  }
}

resource "kubernetes_namespace" "ns_ignore_changes" {
  count = var.ignore_metadata_changes ? 1 : 0

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
