variable "name" { type = string }
variable "region" { type = string }

variable "pg_version" {
  type    = string
  default = "14"
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
