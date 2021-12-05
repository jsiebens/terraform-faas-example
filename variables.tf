variable "openfaas_uri" {
  type    = string
  default = "http://localhost:8080"
}

variable "openfaas_user" {
  type    = string
  default = "admin"
}

variable "openfaas_tls_insecure" {
  type    = bool
  default = true
}

variable "openfaas_password" {
  type = string
}