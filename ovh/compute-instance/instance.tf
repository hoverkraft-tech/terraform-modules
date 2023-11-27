resource "openstack_compute_instance_v2" "instance" {
  region                  = var.region
  name                    = var.name
  image_id                = var.image_id
  flavor_id               = var.flavor_id
  user_data               = var.user_data
  security_groups         = var.security_groups
  availability_zone_hints = var.availability_zone_hints
  availability_zone       = var.availability_zone
  network_mode            = var.network_mode
  key_pair                = var.ssh_keypair
  tags                    = local.interpolated_tags

  metadata = {
    for k, v in local.interpolated_tags : k => v
  }

  dynamic "network" {
    for_each = var.networks
    content {
      name           = lookup(network.value, "name", null)
      uuid           = lookup(network.value, "uuid", null)
      port           = lookup(network.value, "port", null)
      fixed_ip_v4    = lookup(network.value, "fixed_ip_v4", null)
      access_network = lookup(network.value, "access_network", null)
    }
  }

  dynamic "block_device" {
    for_each = var.block_devices
    content {
      uuid                  = lookup(block_device.value, "uuid", null)
      source_type           = lookup(block_device.value, "source_type", null)
      volume_size           = lookup(block_device.value, "volume_size", null)
      guest_format          = lookup(block_device.value, "guest_format", null)
      boot_index            = lookup(block_device.value, "boot_index", null)
      destination_type      = lookup(block_device.value, "destination_type", null)
      delete_on_termination = lookup(block_device.value, "delete_on_termination", null)
      volume_type           = lookup(block_device.value, "volume_type", null)
      device_type           = lookup(block_device.value, "device_type", null)
      disk_bus              = lookup(block_device.value, "disk_bus", null)
      multiattach           = lookup(block_device.value, "multiattach", null)
    }
  }

  dynamic "scheduler_hints" {
    for_each = var.scheduler_hints
    content {
      group                 = lookup(scheduler_hints.value, "group", null)
      same_host             = lookup(scheduler_hints.value, "same_host", null)
      different_host        = lookup(scheduler_hints.value, "different_host", null)
      query                 = lookup(scheduler_hints.value, "query", null)
      target_cell           = lookup(scheduler_hints.value, "target_cell", null)
      different_cell        = lookup(scheduler_hints.value, "different_cell", null)
      build_near_host_ip    = lookup(scheduler_hints.value, "build_near_host_ip", null)
      additional_properties = lookup(scheduler_hints.value, "additional_properties", null)
    }
  }

  dynamic "personality" {
    for_each = var.personalities
    content {
      file    = lookup(personality.value, "file", null)
      content = lookup(personality.value, "content", null)
    }
  }

  dynamic "vendor_options" {
    for_each = var.vendor_options
    content {
      ignore_resize_confirmation  = lookup(vendor_options.value, "ignore_resize_confirmation", null)
      detach_ports_before_destroy = lookup(vendor_options.value, "detach_ports_before_destroy", null)
    }
  }

}
