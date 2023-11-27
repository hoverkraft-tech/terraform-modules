resource "openstack_compute_secgroup_v2" "secgroup" {
  name        = var.name
  description = "Security group ${var.name}"
  region      = var.region

  dynamic "rule" {
    for_each = var.rules
    content {
      from_port   = lookup(rule.value, "from_port", null)
      to_port     = lookup(rule.value, "to_port", null)
      ip_protocol = lookup(rule.value, "ip_protocol", null)
      cidr        = lookup(rule.value, "cidr", null)
    }
  }
}
