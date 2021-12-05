provider "openfaas" {
  uri          = var.openfaas_uri
  tls_insecure = true
  user_name    = "admin"
  password     = var.openfaas_password
}