output "id" {
  value = ovh_cloud_project_kube.k8s.id
}

output "kubeconfig" {
  sensitive = true
  value     = ovh_cloud_project_kube.k8s.kubeconfig
}
