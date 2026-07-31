variable "name" {
  type = string
}

variable "size" {
  type    = string
  default = "m2.medium"
}

variable "image" {
  type    = string
  default = "debian-12"
}

variable "region" {
  type = string
}

variable "ssh_key_ids" {
  type    = list(string)
  default = []
}

variable "data_disk_gb" {
  type    = number
  default = 0
  description = "0 = no extra disk"
}
