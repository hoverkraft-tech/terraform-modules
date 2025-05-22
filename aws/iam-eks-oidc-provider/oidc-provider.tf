resource "aws_iam_openid_connect_provider" "oidc_provider" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = var.thumbprint_list
  url             = var.url
  tags            = local.interpolated_tags
}
