terraform {
  backend "local" {
    path = "/var/opt/terraform/state"
  }
}