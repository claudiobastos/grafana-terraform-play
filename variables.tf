# variable definitions file
# https://www.terraform.io/language/values/variables

# access grafana > configuration > api keys
# set name, role:Admin and duration
variable "grafana_auth" {
  default     = "bla"
  type        = string
  nullable    = false
  description = "o token usado para permitir que o terraforma faça o provisionamento"
}

variable "grafana_org_id" {
  default     = 1
  type        = number
  description = "o id numerico da organização"
}