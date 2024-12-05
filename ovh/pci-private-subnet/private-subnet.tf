resource "openstack_networking_subnet_v2" "subnet" {
  name       = var.name
  network_id = var.network_id
  cidr       = var.ip.network
  ip_version = 4

  dns_nameservers = var.dns_nameservers

  allocation_pool {
    start = var.ip.start
    end   = var.ip.end
  }
  tags = [for k, v in local.interpolated_tags : "${k}=${v}"]
}
