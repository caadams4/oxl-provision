terraform {
  required_version = ">= 1.6"
  required_providers {
    oxlantern = {
      source  = "oxlantern/oxlantern"
      version = ">= 3.1, < 4.0"
    }
  }
}
