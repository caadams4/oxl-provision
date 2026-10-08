resource "oxlantern_pg_cluster" "this" {
  name          = var.name
  region        = var.region
  version       = var.pg_version
  node_count    = var.nodes
  size          = var.size
  storage_gb    = var.storage_gb
  allowed_cidrs = var.allowed_cidrs

  maintenance_window = var.maintenance_window
}

# TODO pgbouncer pool settings, oxl api doesnt expose them yet (asked 2026-08)
