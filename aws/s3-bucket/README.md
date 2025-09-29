# AWS S3 bucket

This module creates a S3 bucket

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.30.0, < 5.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.30.0, < 5.0.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_ownership_controls.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_public_access_block.bucket_public_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.encryption](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.versioning](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acl"></a> [acl](#input\_acl) | acls | `string` | `"private"` | no |
| <a name="input_block_public_acls"></a> [block\_public\_acls](#input\_block\_public\_acls) | Whether Amazon S3 should block public ACLs for this bucket. Defaults to true. | `bool` | `true` | no |
| <a name="input_block_public_policy"></a> [block\_public\_policy](#input\_block\_public\_policy) | Whether Amazon S3 should block public bucket policies for this bucket. Defaults to true. | `bool` | `true` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable. | `bool` | `false` | no |
| <a name="input_ignore_public_acls"></a> [ignore\_public\_acls](#input\_ignore\_public\_acls) | Whether Amazon S3 should ignore public ACLs for this bucket. Defaults to true. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name to be used on all the resources as identifier | `string` | n/a | yes |
| <a name="input_object_lock_enabled"></a> [object\_lock\_enabled](#input\_object\_lock\_enabled) | A boolean that indicates whether this bucket has an Object Lock configuration enabled. Enable Object Lock to prevent objects from being deleted or overwritten for a fixed amount of time or indefinitely. | `bool` | `false` | no |
| <a name="input_object_ownership"></a> [object\_ownership](#input\_object\_ownership) | The container element for object ownership for a bucket's ownership controls. | `string` | `"BucketOwnerPreferred"` | no |
| <a name="input_restrict_public_buckets"></a> [restrict\_public\_buckets](#input\_restrict\_public\_buckets) | Whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to true. | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_bucket_domain_name"></a> [bucket\_domain\_name](#output\_bucket\_domain\_name) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
