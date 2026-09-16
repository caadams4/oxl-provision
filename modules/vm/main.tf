resource "oxlantern_vm" "this" {
  name        = var.name
  size        = var.size
  image       = var.image
  region      = var.region
  ssh_key_ids = var.ssh_key_ids

  network_id = var.network_id
  private_ip = var.private_ip
  labels     = merge({ managed_by = "oxl-provision" }, var.labels)
}

resource "oxlantern_disk" "data" {
  count   = var.data_disk_gb > 0 ? 1 : 0
  name    = "${var.name}-data"
  size_gb = var.data_disk_gb
  region  = var.region
  vm_id   = oxlantern_vm.this.id
}

resource "oxlantern_firewall" "this" {
  name  = "${var.name}-fw"
  vm_id = oxlantern_vm.this.id

  dynamic "rule" {
    for_each = length(var.allow_ssh_from) > 0 ? [1] : []
    content {
      proto  = "tcp"
      port   = 22
      source = var.allow_ssh_from
    }
  }

  dynamic "rule" {
    for_each = var.allow_tcp
    content {
      proto  = "tcp"
      port   = tonumber(rule.key)
      source = rule.value
    }
  }
}
