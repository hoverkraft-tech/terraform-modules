resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = var.bucket_name

  dynamic "lambda_function" {
    for_each = var.lambda_functions
    content {
      lambda_function_arn = lambda_function.value.lambda_function_arn
      events              = lambda_function.value.events
      filter_prefix       = lambda_function.value.filter_prefix
      filter_suffix       = lambda_function.value.filter_suffix
    }
  }
}
