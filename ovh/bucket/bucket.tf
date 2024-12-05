data "openstack_identity_auth_scope_v3" "current" {
  name = "current"
}

resource "openstack_objectstorage_container_v1" "bucket" {
  name         = var.name
  region       = var.region
  metadata     = local.interpolated_tags
  content_type = "application/json"
  container_read = join(":", [
    data.openstack_identity_auth_scope_v3.current.project_id,
    var.ovh_write_user,
  ])
  container_write = join(":", [
    data.openstack_identity_auth_scope_v3.current.project_id,
    var.ovh_write_user,
  ])
}
