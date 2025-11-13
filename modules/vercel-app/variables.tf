# ID del proyecto de Vercel (lo provee envs/global)
variable "project_id" {
  description = "ID del proyecto de Vercel (prj_...)"
  type        = string
}

# Targets donde se aplican estas variables.
# production  = deploy de la rama principal
# preview     = ramas secundarias / PRs
# development = vercel dev local
variable "targets" {
  description = "Targets de Vercel donde aplicar las variables"
  type        = list(string)
  default     = ["production"]
}

# Variables comunes (iguales entre ambientes)
variable "env_vars_common" {
  description = "Variables compartidas entre ambientes"
  type        = map(string)
  default     = {}
}

# Variables específicas por ambiente
variable "env_vars" {
  description = "Variables específicas del ambiente"
  type        = map(string)
  default     = {}
}