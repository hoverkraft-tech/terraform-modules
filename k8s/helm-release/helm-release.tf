resource "helm_release" "release" {
  name             = var.name
  repository       = var.repository
  chart            = var.chart
  version          = var.chart_version
  namespace        = var.namespace
  atomic           = var.atomic
  cleanup_on_fail  = var.cleanup_on_fail
  create_namespace = var.create_namespace
  wait             = var.wait

  values = var.values

  dynamic "set" {
    for_each = var.sets
    content {
      name  = set.value["name"]
      value = set.value["value"]
    }
  }

}
