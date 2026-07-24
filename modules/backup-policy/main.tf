resource "oxlantern_backup_policy" "this" {
  name           = var.name
  schedule       = var.schedule
  retention_days = var.retention_days
  target_ids     = var.target_ids
}
