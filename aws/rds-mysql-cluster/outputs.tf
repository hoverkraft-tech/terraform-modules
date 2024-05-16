output "id" {
  value = aws_rds_cluster.cluster.id
}

output "arn" {
  value = aws_rds_cluster.cluster.arn
}

output "endpoint" {
  value = aws_rds_cluster.cluster.endpoint
}

output "reader_endpoint" {
  value = aws_rds_cluster.cluster.reader_endpoint
}
