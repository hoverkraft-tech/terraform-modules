resource "aws_subnet" "priv_subnet" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnets[var.availability_zones[count.index]].cidr
  availability_zone = var.availability_zones[count.index]
  tags = merge(
    local.interpolated_tags,
    {
      Name       = var.private_subnets[var.availability_zones[count.index]].name
      SubnetType = "Private"
    }
  )
}
