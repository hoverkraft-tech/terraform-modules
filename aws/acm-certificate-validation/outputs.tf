output "id" {
  description = "The ID of the ACM certificate validation"
  value       = aws_acm_certificate_validation.validation.id
}

output "certificate_arn" {
  description = "The ARN of the validated certificate"
  value       = aws_acm_certificate_validation.validation.certificate_arn
}
