resource "oxlantern_vm" "this" {
  name        = var.name
  size        = var.size
  image       = var.image
  region      = var.region
  ssh_key_ids = var.ssh_key_ids
}

resource "oxlantern_disk" "data" {
  count   = var.data_disk_gb > 0 ? 1 : 0
  name    = "${var.name}-data"
  size_gb = var.data_disk_gb
  region  = var.region
  vm_id   = oxlantern_vm.this.id
}
