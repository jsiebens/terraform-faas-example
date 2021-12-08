terraform {
  backend "local" {
    path = "/var/opt/terraform/state/default.state"
  }
}