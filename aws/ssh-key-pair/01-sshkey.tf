resource "aws_key_pair" "ssh_key_pair" {
  key_name   = var.name
  public_key = var.public_key

  tags = merge({ Name = var.name }, local.interpolated_tags)
}
