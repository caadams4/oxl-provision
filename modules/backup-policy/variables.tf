variable "name" { type = string }

variable "target_ids" {
  type = list(string)
}

variable "schedule" {
  type    = string
  default = "0 2 * * *"
}

variable "retention_days" {
  type    = number
  default = 0
}
