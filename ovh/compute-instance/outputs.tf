output "id" {
  description = "The ID of the compute instance"
  value       = openstack_compute_instance_v2.instance.id
}

output "name" {
  description = "The name of the compute instance"
  value       = openstack_compute_instance_v2.instance.name
}

output "access_ip_v4" {
  description = "The IPv4 access address of the instance"
  value       = openstack_compute_instance_v2.instance.access_ip_v4
}

output "access_ip_v6" {
  description = "The IPv6 access address of the instance"
  value       = openstack_compute_instance_v2.instance.access_ip_v6
}
