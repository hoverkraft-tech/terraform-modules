resource "aws_acm_certificate_validation" "validation" {
  certificate_arn         = var.certificate_arn
  validation_record_fqdns = var.validation_record_fqdns
  lifecycle {
    create_before_destroy = true
  }
  timeouts {
    create = var.timeout_create
  }
}
