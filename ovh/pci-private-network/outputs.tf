output "id" {
  value = ovh_cloud_project_network_private.vrack.id
}

output "name" {
  value = ovh_cloud_project_network_private.vrack.name
}

output "uuid" {
  value = one(ovh_cloud_project_network_private.vrack.regions_attributes)["openstackid"]
}
