output "arn" {
  value = aws_lambda_function.function.arn
}

output "qualified_arn" {
  value = aws_lambda_function.function.qualified_arn
}
