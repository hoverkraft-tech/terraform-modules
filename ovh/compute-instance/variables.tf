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

# bellow are specific modules variables
variable "region" {
  description = "Region to use for the instance"
  type        = string
}

variable "image_id" {
  description = "Image ID to use for the instance (default: Ubuntu 22.04 UEFI on GRA9)"
  type        = string
  default     = "b627c305-6945-47b5-8b69-c8d436f340a3" # ubuntu 22.04 UEFI on GRA9
}

variable "flavor_id" {
  description = "Flavor ID to use for the instance (default: b2-7 on GRA9)"
  type        = string
  default     = "906e8259-0340-4856-95b5-4ea2d26fe377" # b2-7 on GRA9
}

variable "user_data" {
  description = "User data to use for the instance"
  type        = string
  default     = ""
}

variable "availability_zone_hints" {
  description = "Availability zone hints to use for the instance"
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "Availability zone to use for the instance"
  type        = string
  default     = "nova"
}

variable "ssh_keypair" {
  description = "SSH keypair to use for the instance"
  type        = string
}

variable "security_groups" {
  description = "Security groups to use for the instance"
  type        = list(string)
  default     = []
}

variable "networks" {
  description = "Network to use for the instance"
  type        = list(any)
  default     = []
}

variable "network_mode" {
  description = "Network mode to use for the instance"
  type        = string
  default     = null
}

variable "block_devices" {
  description = "Block devices to use for the instance"
  type        = list(any)
  default     = []
}

variable "scheduler_hints" {
  description = "Scheduler hints to use for the instance"
  type        = list(any)
  default     = []
}

variable "personalities" {
  description = "Personalities to use for the instance"
  type        = list(any)
  default     = []
}

variable "vendor_options" {
  description = "Vendor options to use for the instance"
  type        = list(any)
  default     = []
}
