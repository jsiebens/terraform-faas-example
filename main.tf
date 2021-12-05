resource "openfaas_function" "function_test" {
  name      = "test-function"
  image     = "ghcr.io/openfaas/alpine:latest"
  f_process = "env"
}