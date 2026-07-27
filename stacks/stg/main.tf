module "api" {
  source   = "../../modules/vm"
  for_each = toset(["api-stg-01", "api-stg-02"])

  name        = each.key
  region      = "ams-1"
  size        = "m2.medium"
  ssh_key_ids = var.ssh_key_ids
}
