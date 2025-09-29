output "certificate_arn" {
  description = "The ARN of the validated certificate"
  value       = aws_acm_certificate_validation.validation.certificate_arn
}
