data "helm_template" "main" {
  name             = var.name
  repository       = var.repository
  chart            = var.chart
  version          = var.chart_version
  namespace        = var.namespace
  atomic           = var.atomic
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
