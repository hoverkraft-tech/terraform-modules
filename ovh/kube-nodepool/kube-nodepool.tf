resource "ovh_cloud_project_kube_nodepool" "pool" {
  service_name   = var.cloud_project_id
  kube_id        = var.kube_id
  name           = var.name
  flavor_name    = var.flavor_name
  desired_nodes  = var.desired_nodes
  min_nodes      = var.min_nodes
  max_nodes      = var.max_nodes
  monthly_billed = var.monthly_billed
  anti_affinity  = var.anti_affinity
  autoscale      = var.autoscale

  dynamic "template" {
    for_each = var.template != null ? [var.template] : []
    content {
      dynamic "metadata" {
        for_each = template.value.metadata != null ? [template.value.metadata] : []
        content {
          annotations = lookup(metadata.value, "annotations", null)
          finalizers  = lookup(metadata.value, "finalizers", null)
          labels      = lookup(metadata.value, "labels", null)
        }
      }
      dynamic "spec" {
        for_each = template.value.spec != null ? [template.value.spec] : []
        content {
          taints        = lookup(spec.value, "taints", null)
          unschedulable = lookup(spec.value, "unschedulable", null)
        }
      }
    }
  }
}
