resource "ovh_me_ssh_key" "ssh-key-pair" {
  count    = var.ovh_use_old_ssh_keys ? 1 : 0
  key_name = var.name
  key      = var.public_key
}

resource "openstack_compute_keypair_v2" "pci-ssh-key-pair" {
  name       = var.name
  public_key = var.public_key
}
