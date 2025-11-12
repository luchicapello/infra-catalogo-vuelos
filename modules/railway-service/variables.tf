variable "project_id" {
  type        = string
  description = "ID del proyecto Railway (creado en envs/global)"
}

variable "service_id" {
  type        = string
  description = "ID del servicio Railway (creado en envs/global)"
}

variable "environment_name" {
  type        = string
  description = "Nombre del ambiente (main, preprod, etc.)"
}

variable "env_vars_common" {
  type        = map(string)
  description = "Variables comunes para todos los ambientes"
  default     = {}
}

variable "env_vars" {
  type        = map(string)
  description = "Variables específicas para este ambiente"
  default     = {}
}

variable "create_subdomain" {
  type        = bool
  description = "Si es true, crea un subdominio automático para el servicio"
  default     = false
}