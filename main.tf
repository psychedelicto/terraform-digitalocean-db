
#Module      : LABEL
#Description : Terraform label module variables.
module "labels" {
  source      = "clouddrove/labels/digitalocean"
  version     = "0.13.0"
  name        = var.name
  application = var.application
  environment = var.environment
  label_order = var.label_order
}

resource "digitalocean_database_cluster" "db" {
  name       = module.labels.id
  engine     = var.db_engine
  version    = var.db_version
  size       = var.db_size
  region     = var.db_region
  node_count = 1
}
