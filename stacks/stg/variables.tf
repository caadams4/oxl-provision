variable "oxl_api_token" {
  type      = string
  sensitive = true
  # export TF_VAR_oxl_api_token, see .env.example
}

variable "ssh_key_ids" {
  type    = list(string)
  default = []
}

variable "jump_cidrs" {
  type    = list(string)
  default = []
}
