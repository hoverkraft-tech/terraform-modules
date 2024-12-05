output "access_key_id" {
  value     = ovh_cloud_project_user_s3_credential.credential.access_key_id
  sensitive = true
}

output "secret_access_key" {
  value     = ovh_cloud_project_user_s3_credential.credential.secret_access_key
  sensitive = true
}
