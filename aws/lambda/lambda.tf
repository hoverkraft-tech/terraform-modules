#trivy:ignore:AVD-AWS-0066 xray tracing is up to the user
resource "aws_lambda_function" "function" {

  code_signing_config_arn        = var.code_signing_config_arn
  description                    = var.lambda_description
  filename                       = var.filename
  function_name                  = var.name
  handler                        = var.handler
  kms_key_arn                    = var.kms_key_arn
  layers                         = var.layers
  memory_size                    = var.memory_size
  reserved_concurrent_executions = var.reserved_concurrent_executions
  role                           = var.iam_role_arn
  runtime                        = var.runtime
  source_code_hash               = filebase64sha256(var.filename)
  timeout                        = var.timeout

  dynamic "vpc_config" {
    for_each = try(length(var.vpc_config, 0), [])
    content {
      security_group_ids = vpc_config.value.security_group_ids
      subnet_ids         = vpc_config.value.subnet_ids
    }
  }

  environment {
    variables = var.env_vars
  }

  tracing_config {
    mode = var.tracing_config_mode
  }

  dynamic "dead_letter_config" {
    for_each = try(lenght(var.dead_letter_config, 0), [])
    content {
      target_arn = dead_letter_config.value.target_arn
    }
  }

  tags = local.interpolated_tags
}
