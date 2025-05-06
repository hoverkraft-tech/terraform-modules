// route tables
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpc.id
  tags = merge(
    local.interpolated_tags,
    { Name = "${var.name}-public-rt" },
  )
}

resource "aws_route_table" "private_rt" {
  count  = length(var.availability_zones)
  vpc_id = aws_vpc.vpc.id
  tags = merge(
    local.interpolated_tags,
    { Name = "${var.private_subnets[var.availability_zones[count.index]].name}-private-rt" },
  )
}

// routes
resource "aws_route" "public_default_route" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route" "private_default_route" {
  count                  = length(var.availability_zones)
  route_table_id         = aws_route_table.private_rt[count.index].id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gw[count.index].id
}

// routes table associations
resource "aws_route_table_association" "private_rta" {
  count          = length(var.availability_zones)
  subnet_id      = aws_subnet.priv_subnet[count.index].id
  route_table_id = aws_route_table.private_rt[count.index].id
}

resource "aws_route_table_association" "public_rta" {
  count          = length(var.availability_zones)
  subnet_id      = aws_subnet.pub_subnet[count.index].id
  route_table_id = aws_route_table.public_rt.id
}
