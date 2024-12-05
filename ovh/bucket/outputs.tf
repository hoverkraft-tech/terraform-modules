output "bucket" {
  value = {
    "url"          = "s3://${openstack_objectstorage_container_v1.bucket.name}",
    "endpoint_url" = "https://s3.${local.s3_region}.cloud.ovh.net"
    "region"       = local.s3_region,
    "name"         = openstack_objectstorage_container_v1.bucket.name,
  }
}
