resource "ovh_cloud_project_database" "instance" {
  service_name = var.cloud_project_id
  description  = var.name
  engine       = "postgresql"
  version      = var.pg_version
  plan         = var.pg_plan
  flavor       = var.pg_flavor
  dynamic "nodes" {
    for_each = var.pg_nodes
    content {
      region     = nodes.value.region
      network_id = nodes.value.network_id
      subnet_id  = nodes.value.subnet_id
    }
  }
}

resource "ovh_cloud_project_database_postgresql_user" "user" {
  count        = length(var.pg_users)
  service_name = var.cloud_project_id
  cluster_id   = ovh_cloud_project_database.instance.id
  name         = var.pg_users[count.index].name
  roles        = var.pg_users[count.index].roles
}

resource "ovh_cloud_project_database_ip_restriction" "iprestriction" {
  count        = var.pg_allowed_ips == null ? 0 : length(var.pg_allowed_ips)
  service_name = ovh_cloud_project_database.instance.service_name
  engine       = ovh_cloud_project_database.instance.engine
  cluster_id   = ovh_cloud_project_database.instance.id
  ip           = var.pg_allowed_ips[count.index]
}

resource "ovh_cloud_project_database_database" "database" {
  count        = length(var.pg_databases)
  service_name = ovh_cloud_project_database.instance.service_name
  engine       = ovh_cloud_project_database.instance.engine
  cluster_id   = ovh_cloud_project_database.instance.id
  name         = var.pg_databases[count.index]
}
