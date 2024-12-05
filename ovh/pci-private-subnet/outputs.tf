output "id" {
  value = openstack_networking_subnet_v2.subnet.id
}

output "network_id" {
  value = openstack_networking_subnet_v2.subnet.network_id
}

output "gateway_ip" {
  value = openstack_networking_subnet_v2.subnet.gateway_ip
}
