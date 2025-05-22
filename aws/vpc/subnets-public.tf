resource "aws_subnet" "pub_subnet" {
  count                   = length(var.availability_zones)
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnets[var.availability_zones[count.index]].cidr
  availability_zone       = var.availability_zones[count.index]
  map_public_ip_on_launch = true
  tags = merge(
    local.interpolated_tags,
    {
      Name                     = var.public_subnets[var.availability_zones[count.index]].name
      SubnetType               = "Public"
      "kubernetes.io/role/elb" = "1"
    }
  )
}
