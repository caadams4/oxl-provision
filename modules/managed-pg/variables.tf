variable "name" { type = string }
variable "region" { type = string }

variable "pg_version" {
  type    = string
  default = "16"
}

variable "nodes" {
  type    = number
  default = 1
}

variable "size" {
  type    = string
  default = "db.m2.large"
}

variable "storage_gb" {
  type    = number
  default = 100
}

variable "allowed_cidrs" {
  type    = list(string)
  default = []
}

variable "maintenance_window" {
  type    = string
  default = "sat 22:00-02:00"
  description = "UTC. uk time is +1 in summer, check before you set it"
}
