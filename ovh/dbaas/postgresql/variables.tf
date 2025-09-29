variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# bellow are specific modules variables
variable "cloud_project_id" {
  description = "The OVH public cloud project id"
  type        = string
}

variable "pg_flavor" {
  description = "Flavor of the database"
  type        = string
  default     = "db1-4"
}

variable "pg_nodes" {
  description = "Nodes of the database"
  type = list(object({
    region     = string
    network_id = string
    subnet_id  = string
  }))
  default = [
    {
      region     = "GRA5"
      network_id = null
      subnet_id  = null
    }
  ]
}

variable "pg_plan" {
  description = "Plan of the database"
  type        = string
  default     = "essential"
}

variable "pg_version" {
  description = "Version of the database"
  type        = string
  default     = "14"
}

variable "pg_users" {
  description = "Users of the database"
  type = list(object({
    name  = string
    roles = list(string)
  }))
  default = [
    {
      name  = "root"
      roles = ["admin"]
    }
  ]
}

variable "pg_allowed_ips" {
  description = "IPs cidrs allowed to access the database"
  type        = list(string)
  default     = null
}

variable "pg_databases" {
  description = "Name of the databases to create"
  type        = list(string)
  # if empty only the default database will be created (defaultdb)
  default = []
}
