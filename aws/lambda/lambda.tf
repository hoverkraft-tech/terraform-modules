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
  source_code_hash               = base64sha256(file(var.filename))
  timeout                        = var.timeout

  dynamic "vpc_config" {
    for_each = var.vpc_config
    content {
      security_group_ids = vpc_config.value.security_group_ids
      subnet_ids         = vpc_config.value.subnet_ids
    }
  }

  environment {
    variables = var.env_vars
  }

  tracing_config {
    #tfsec:ignore:aws-lambda-enable-tracing
    mode = var.tracing_config_mode
  }

  dynamic "dead_letter_config" {
    for_each = var.dead_letter_config
    content {
      target_arn = dead_letter_config.value.target_arn
    }
  }

  tags = local.interpolated_tags
}
