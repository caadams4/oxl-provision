resource "oxlantern_vm" "this" {
  name        = var.name
  size        = var.size
  image       = var.image
  region      = var.region
  ssh_key_ids = var.ssh_key_ids
}
