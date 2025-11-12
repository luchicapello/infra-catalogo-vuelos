# Crea el ambiente
resource "railway_environment" "this" {
  name       = var.environment_name
  project_id = var.project_id
}

# Combina variables comunes y específicas
locals {
  merged_vars = merge(var.env_vars_common, var.env_vars)
}

# Crea variables de entorno en Railway
resource "railway_variable" "vars" {
  for_each       = local.merged_vars
  name           = each.key
  value          = each.value
  service_id     = var.service_id
  environment_id = railway_environment.this.id
}
