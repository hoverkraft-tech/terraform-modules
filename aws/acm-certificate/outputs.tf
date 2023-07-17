output "arn" {
  description = "ARN of the certificate"
  value       = aws_acm_certificate.cert.arn
}

output "domain_validation_options" {
  description = "Domain Validation Options"
  value       = aws_acm_certificate.cert.domain_validation_options
}
