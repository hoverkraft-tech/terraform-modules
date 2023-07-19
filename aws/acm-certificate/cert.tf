resource "aws_acm_certificate" "cert" {
  domain_name               = var.domain_name
  subject_alternative_names = var.subject_alternative_names
  validation_method         = "DNS"

  tags = local.interpolated_tags
  lifecycle {
    create_before_destroy = true
  }
}
