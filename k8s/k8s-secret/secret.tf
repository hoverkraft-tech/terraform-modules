resource "kubernetes_secret" "secret" {
  metadata {
    name      = var.name
    namespace = var.namespace #checkov:skip=CKV_K8S_21:default namespace is the logical value here
    labels    = merge(local.interpolated_tags, var.labels)
  }

  data = var.data
  type = var.type
}
