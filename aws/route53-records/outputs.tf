output "records" {
  value = [
    for r in aws_route53_record.record[*] : {
      name = r.name
      fqdn = r.fqdn
      type = r.type
      ttl = r.ttl
    }
  ]
}
