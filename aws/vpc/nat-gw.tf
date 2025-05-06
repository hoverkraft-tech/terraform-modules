// eips for nat gateways
resource "aws_eip" "nat_gw_eips" {
  #checkov:skip=CKV2_AWS_19:invalid - ip will be attached to nat gw
  count = length(var.availability_zones)
  vpc   = true
  tags = merge(
    { Name = "${var.name}-${var.availability_zones[count.index]}-nat-gw" },
    local.interpolated_tags
  )
}

// nat gateways
resource "aws_nat_gateway" "nat_gw" {
  count         = length(aws_eip.nat_gw_eips)
  allocation_id = aws_eip.nat_gw_eips[count.index].id
  subnet_id     = aws_subnet.priv_subnet[count.index].id
  tags = merge(
    local.interpolated_tags,
    { Name = "${var.availability_zones[count.index]}-nat-gw" },
  )
}
