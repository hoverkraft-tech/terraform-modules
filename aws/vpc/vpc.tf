data "aws_region" "current" {}

#trivy:ignore:avd-aws-0178 fixme: logging is up to the user (but we can provide a switch with good default)
resource "aws_vpc" "vpc" {
  #checkov:skip=CKV2_AWS_11:fixme: logging is up to the user (but we can provide a switch with good default)
  #checkov:skip=CKV2_AWS_12:fixme: we must indeed block the traffic by design
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = merge(
    local.interpolated_tags,
    { Name = var.name },
  )
}

resource "aws_vpc_dhcp_options" "dhcp_opts" {
  domain_name         = "${data.aws_region.current.name}.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]
  tags = merge(
    local.interpolated_tags,
    { Name = var.name },
  )
}

resource "aws_vpc_dhcp_options_association" "dhcp_opts" {
  vpc_id          = aws_vpc.vpc.id
  dhcp_options_id = aws_vpc_dhcp_options.dhcp_opts.id
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = merge(
    local.interpolated_tags,
    { Name = "${var.name}-igw" },
  )
}
