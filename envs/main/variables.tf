variable "env_vars_common" {
  type        = map(string)
  description = "Variables de entorno comunes a todos los ambientes"
  default     = {}
}

variable "env_vars" {
  type        = map(string)
  description = "Variables de entorno específicas del ambiente MAIN"
  default     = {}
}

variable "vercel_project_id" {
  description = "ID del proyecto Vercel para el frontend"
  type        = string
}