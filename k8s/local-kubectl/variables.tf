# module specific variables

variable "kubeconfig" {
  description = "Kubeconfig file for the cluster"
  type        = string
  default     = "~/.kube/config"
}

variable "commands" {
  description = "Arguments to pass to the kubectl command"
  type        = list(string)
  default     = ["get namespaces"]
}

variable "always_run" {
  description = "Always run the task, even if the pipeline has already been run"
  type        = bool
  default     = false
}

variable "namespace" {
  description = "Namespace to run the command in (optional)"
  type        = string
  default     = null
}

variable "logfile" {
  description = "File to write the output of the kubectl command to"
  type        = string
  default     = "/tmp/tf_kubectl_cmds.log"
}
