resource "ovh_cloud_project_database" "instance" {
  service_name = var.cloud_project_id
  description  = var.name
  engine       = "mysql"
  version      = var.mysql_version
  plan         = var.mysql_plan
  flavor       = var.mysql_flavor
  dynamic "nodes" {
    for_each = var.mysql_nodes
    content {
      region     = nodes.value.region
      network_id = nodes.value.network_id
      subnet_id  = nodes.value.subnet_id
    }
  }
}

resource "ovh_cloud_project_database_user" "user" {
  engine       = "mysql"
  count        = length(var.mysql_users)
  service_name = var.cloud_project_id
  cluster_id   = ovh_cloud_project_database.instance.id
  name         = var.mysql_users[count.index].name
}

resource "ovh_cloud_project_database_ip_restriction" "iprestriction" {
  count        = var.mysql_allowed_ips == null ? 0 : length(var.mysql_allowed_ips)
  service_name = ovh_cloud_project_database.instance.service_name
  engine       = ovh_cloud_project_database.instance.engine
  cluster_id   = ovh_cloud_project_database.instance.id
  ip           = var.mysql_allowed_ips[count.index]
}

resource "ovh_cloud_project_database_database" "database" {
  count        = length(var.mysql_databases)
  service_name = ovh_cloud_project_database.instance.service_name
  engine       = ovh_cloud_project_database.instance.engine
  cluster_id   = ovh_cloud_project_database.instance.id
  name         = var.mysql_databases[count.index]
}
