module "api" {
  source   = "../../modules/vm"
  for_each = toset(["api-prod-01", "api-prod-02"])

  name           = each.key
  region         = "slo-1"
  size           = "m2.xlarge"
  ssh_key_ids    = var.ssh_key_ids
  network_id     = "prod-private"
  allow_ssh_from = var.jump_cidrs
  allow_tcp      = { "8443" = ["10.40.4.0/24"] }
  labels         = { env = "prod" }
}

module "pg" {
  source   = "../../modules/managed-pg"
  for_each = toset(["pg-prod-01", "pg-prod-02"])

  name          = each.key
  region        = "slo-1"
  pg_version    = "16"
  nodes         = 2
  size          = "db.m2.xlarge"
  storage_gb    = 500
  allowed_cidrs = ["10.40.4.0/24"]
}

module "backup" {
  source = "../../modules/backup-policy"

  name           = "prod-nightly"
  target_ids     = [for m in module.pg : m.id]
  retention_days = 30
  offsite        = true
}
