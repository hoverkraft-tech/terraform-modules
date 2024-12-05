resource "ovh_cloud_project_kube" "k8s" {
  name               = var.name
  service_name       = var.cloud_project_id
  region             = var.region
  version            = var.k8s_version
  private_network_id = var.private_network_id

  private_network_configuration {
    default_vrack_gateway              = var.default_vrack_gateway
    private_network_routing_as_default = var.private_network_routing_as_default
  }

  update_policy = var.update_policy
}
