output "id" {
  value = ovh_cloud_project_database.instance.id
}

output "endpoints" {
  value = ovh_cloud_project_database.instance.endpoints
}

output "nodes" {
  value = ovh_cloud_project_database.instance.nodes
}

output "status" {
  value = ovh_cloud_project_database.instance.status
}

output "users" {
  value     = ovh_cloud_project_database_user.user[*]
  sensitive = true
}
