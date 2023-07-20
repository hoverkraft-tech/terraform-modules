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
variable "efs_file_system_id" {
  description = "The ID of the EFS file system"
  type        = string
}

variable "posix_user" {
  description = "The POSIX user and group applied to the root directory of the file system"
  type = object({
    gid = number
    uid = number
  })
  default = null
}

variable "root_directory" {
  description = "The directory on the EFS file system that the access point exposes as the root directory to NFS clients using the access point"
  type = object({
    creation_info = object({
      owner_gid   = number
      owner_uid   = number
      permissions = string
    })
    path = string
  })
  default = {
    creation_info = {
      owner_gid   = 0
      owner_uid   = 0
      permissions = "755"
    }
    path = "/"
  }
}
