output "bucket" {
  value = {
    "url"          = "s3://${ovh_cloud_project_storage.storage.name}",
    "endpoint_url" = "https://s3.${local.s3_region}.cloud.ovh.net"
    "region"       = local.s3_region,
    "name"         = ovh_cloud_project_storage.storage.name,
  }
}
