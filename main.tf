resource "openfaas_function" "function_test" {
  name      = "test-function"
  image     = "ghcr.io/openfaas/alpine:latest"
  f_process = "env"
}

resource "openfaas_function" "env" {
  name      = "env"
  image     = "ghcr.io/openfaas/alpine:latest"
  f_process = "env"
}