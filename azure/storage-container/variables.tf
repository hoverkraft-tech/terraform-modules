variable "name" {
  description = "Name applied to the storage container"
  type        = string
  default     = "terragrunt-backend"
}

# --- below are specific module variables ---

variable "storage_account_id" {
  description = "The id of the Storage Account where the Container should be created"
  type        = string
}

variable "access_type" {
  description = "The access type for the storage container (private, blob, container)"
  type        = string
  default     = "private"
}
