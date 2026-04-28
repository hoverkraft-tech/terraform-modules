variable "server_id" {
  description = "The ID of the PostgreSQL server on which to create the databases"
  type        = string
}

variable "databases" {
  description = "List of PostgreSQL databases to create"
  type = list(object({
    name      = string
    charset   = optional(string, "UTF8")
    collation = optional(string, "en_US.utf8")
  }))
  default = []
}
