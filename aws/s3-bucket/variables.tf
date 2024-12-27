variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment for the current deployment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables
variable "force_destroy" {
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  type        = bool
  default     = false
}

variable "object_lock_enabled" {
  description = "A boolean that indicates whether this bucket has an Object Lock configuration enabled. Enable Object Lock to prevent objects from being deleted or overwritten for a fixed amount of time or indefinitely."
  type        = bool
  default     = false
}

# -------------------------------------------------------------------
# public access config
# -------------------------------------------------------------------
variable "block_public_acls" {
  description = "Whether Amazon S3 should block public ACLs for this bucket. Defaults to true."
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for this bucket. Defaults to true."
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for this bucket. Defaults to true."
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to true."
  type        = bool
  default     = true
}

# object ownership policy
variable "object_ownership" {
  description = "The container element for object ownership for a bucket's ownership controls."
  type        = string
  default     = "BucketOwnerPreferred"
}

# acls
variable "acl" {
  type    = string
  default = "private"
}
