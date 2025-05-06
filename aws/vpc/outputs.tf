output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "vpc_arn" {
  value = aws_vpc.vpc.arn
}

output "vpc_default_security_group_id" {
  value = aws_vpc.vpc.default_security_group_id
}

output "vpc_main_route_table_id" {
  value = aws_vpc.vpc.main_route_table_id
}

output "public_subnet_ids" {
  value = aws_subnet.pub_subnet[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.priv_subnet[*].id
}

output "nat_gateway_ids" {
  value = aws_nat_gateway.nat_gw[*].id
}

output "public_route_table_id" {
  value = aws_route_table.public_rt.id
}

output "private_route_table_ids" {
  value = aws_route_table.private_rt[*].id
}
