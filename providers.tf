##############################
# Providers (sin secretos)
##############################

variable "vercel_token" {
  type      = string
  sensitive = true
}

variable "db_host"      { type = string }
variable "db_name"      { type = string }
variable "db_user"      { type = string }
variable "db_password"  {
  type      = string
  sensitive = true
}

provider "vercel" {
  api_token = var.vercel_token
}

provider "postgresql" {
  host            = var.db_host
  port            = 5432
  database        = var.db_name
  username        = var.db_user
  password        = var.db_password
  sslmode         = "require"
  connect_timeout = 15
}

# Railway NO tiene provider oficial estable -> se usará módulo + local_exec
provider "null" {}
