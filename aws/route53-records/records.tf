resource "aws_route53_record" "record" {
  count   = length(var.records)
  zone_id = var.hosted_zone_id
  name    = var.records[count.index].name
  type    = var.records[count.index].type
  ttl     = var.records[count.index].ttl
  records = var.records[count.index].records
}
