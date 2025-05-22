variable "name" {
  description = "The name of the current addons set"
  type        = string
  default     = "eks-addons"
}

variable "customer" {
  description = "Customer for the current addons set"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment for the current addons set"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables
variable "cluster_name" {
  description = "The name of the cluster"
  type        = string
}

variable "addons" {
  description = "List of addons to enable and version to use"
  type        = list(map(string))
  default = [
    {
      name    = "vpc-cni"
      version = "v1.10.1-eksbuild.1"
    },
    {
      name    = "coredns"
      version = "v1.8.4-eksbuild.1"
    },
    {
      name    = "kube-proxy"
      version = "v1.21.2-eksbuild.2"
    },
    {
      name    = "ebs-csi-driver"
      version = "v1.11.2-eksbuild.1"
    }
  ]
}
