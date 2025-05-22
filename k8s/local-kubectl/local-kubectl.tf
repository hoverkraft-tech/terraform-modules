resource "null_resource" "kubectl" {
  count = length(var.commands)

  triggers = {
    always_run = var.always_run ? timestamp() : 0
    cmd        = trim(replace(var.commands[count.index], "kubectl", "kubectl --kubeconfig ${var.kubeconfig}"), "\n")
    namespace  = var.namespace != null ? "--namespace ${var.namespace}" : ""
  }

  provisioner "local-exec" {
    command     = format("%s %s %s", self.triggers.cmd, self.triggers.namespace, ">> ${var.logfile}-${count.index}")
    interpreter = ["/bin/bash", "-c"]
    environment = {
      KUBECONFIG = base64encode(var.kubeconfig)
    }
  }
}
