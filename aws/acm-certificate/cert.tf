resource "aws_acm_certificate" "cert" {
  domain_name               = var.domain_name
  subject_alternative_names = var.subject_alternative_names
  validation_method         = "DNS"
  tags                      = local.interpolated_tags

  options {
    certificate_transparency_logging_preference = var.certificate_transparency_logging_preference
  }

  lifecycle {
    create_before_destroy = true
  }
}
