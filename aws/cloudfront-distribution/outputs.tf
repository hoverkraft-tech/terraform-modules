output "arn" {
  description = "ARN of the cloudfront distribution"
  value       = aws_cloudfront_distribution.main.arn
}

output "domain_name" {
  description = "Domain name of the cloudfront distribution"
  value       = aws_cloudfront_distribution.main.domain_name
}
