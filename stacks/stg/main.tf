module "api" {
  source   = "../../modules/vm"
  for_each = toset(["api-stg-01", "api-stg-02"])

  name           = each.key
  region         = "ams-1"
  size           = "m2.medium"
  ssh_key_ids    = var.ssh_key_ids
  network_id     = "stg-private"
}

module "pg" {
  source   = "../../modules/managed-pg"
  for_each = toset(["pg-stg-01", "pg-stg-02"])

  name          = each.key
  region        = "ams-1"
  pg_version    = "16"
  allowed_cidrs = ["10.40.20.0/24"]
}

module "backup" {
  source = "../../modules/backup-policy"

  name           = "stg-nightly"
  target_ids     = [for m in module.pg : m.id]
  retention_days = 7
}
