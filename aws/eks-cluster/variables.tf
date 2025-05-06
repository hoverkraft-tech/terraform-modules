variable "name" {
  description = "The name of the launch template"
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

variable "k8s_version" {
  description = "The version of kubernetes to use"
  type        = string
  default     = "1.32"
}

variable "role_arn" {
  description = "The role used by EKS control plane to make calls to AWS API on your behalf"
  type        = string
}

variable "endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled"
  type        = bool
  default     = false
}

variable "endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled"
  type        = bool
  default     = true
}

variable "public_access_cidrs" {
  description = "List of CIDR blocks to allow access to the public endpoint"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "security_group_ids" {
  description = "List of security group IDs to attach to the EKS cluster"
  type        = list(string)
  default     = []
}

variable "subnet_ids" {
  description = "List of subnet IDs to launch resources in"
  type        = list(string)
}

variable "service_ipv4_cidr" {
  description = "The CIDR block that Kubernetes service IP addresses are assigned from"
  type        = string
  default     = "10.43.0.0/16"
}

variable "ip_family" {
  description = "The IP address type for the cluster control plane"
  type        = string
  default     = "ipv4"
}
