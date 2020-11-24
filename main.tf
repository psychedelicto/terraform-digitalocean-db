
resource "digitalocean_database_cluster" "db" {
  name                  = var.name
  engine                = var.engine
  version               = var.db_version
  size                  = var.size
  region                = var.region
  private_network_uuid  = var.vpc_id
  node_count = 1
}
