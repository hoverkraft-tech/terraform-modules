output "id" {
  value = ovh_cloud_project_user.user.id
}

output "username" {
  value = ovh_cloud_project_user.user.username
}

output "password" {
  value     = ovh_cloud_project_user.user.password
  sensitive = true
}
