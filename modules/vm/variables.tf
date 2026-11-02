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
  default     = 0
  description = "0 = no extra disk"
}

variable "network_id" {
  type    = string
  default = null
}

variable "private_ip" {
  type    = string
  default = null
  description = "fixed address in 10.40.0.0/16, leave null to let oxl pick"
}

variable "allow_ssh_from" {
  type    = list(string)
  default = []
  description = "CIDRs allowed on 22. Normally just the jump hosts / vpn range"
}

variable "allow_tcp" {
  type    = map(list(string))
  default = {}
  # { "8443" = ["10.40.4.0/24"] }
}

variable "labels" {
  type    = map(string)
  default = {}
}
