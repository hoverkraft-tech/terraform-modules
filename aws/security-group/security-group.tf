locals {

  rules = {
    for name, rule in var.sg_rules : name => {
      description              = lookup(rule, "description", null)
      type                     = lookup(rule, "type", null)
      from_port                = lookup(rule, "from_port", null)
      to_port                  = lookup(rule, "to_port", null)
      protocol                 = lookup(rule, "protocol", null)
      cidr_blocks              = lookup(rule, "cidr_blocks", null)
      ipv6_cidr_blocks         = lookup(rule, "ipv6_cidr_blocks", null)
      prefix_list_ids          = lookup(rule, "prefix_list_ids", null)
      source_security_group_id = lookup(rule, "source_security_group_id", null)
      self                     = lookup(rule, "self", null)
    }
  }

}

resource "aws_security_group" "sg" {
  #checkov:skip=CKV2_AWS_5:invalid - this is a module
  name        = var.name
  description = "${var.name} security group"
  vpc_id      = var.vpc_id
  tags        = merge({ Name = var.name }, local.interpolated_tags)
}

#trivy:ignore:aws-ec2-no-public-ingress-sgr
#trivy:ignore:aws-ec2-no-public-egress-sgr
resource "aws_security_group_rule" "sg_rule" {
  for_each = local.rules

  security_group_id        = aws_security_group.sg.id
  type                     = each.value.type
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  cidr_blocks              = each.value.cidr_blocks
  ipv6_cidr_blocks         = each.value.ipv6_cidr_blocks
  prefix_list_ids          = each.value.prefix_list_ids
  source_security_group_id = each.value.source_security_group_id
  self                     = each.value.self
  description              = each.value.description
}
