output "kubeconfig_path" {
  value       = local_sensitive_file.kubeconfig.filename
  description = "Path to the kubeconfig file"
}
