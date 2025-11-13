locals {
  merged_vars = merge(var.env_vars_common, var.env_vars)
}

# Crea variables de entorno en Vercel para un proyecto
resource "vercel_project_env" "vars" {
  for_each = local.merged_vars

  project_id = var.project_id   # ID del proyecto de Vercel
  key        = each.key         # Nombre de la env var: ej: VITE_API_URL
  value      = each.value       # Valor de esa env var
  type       = "plain"          # Texto plano
  target     = var.targets      # A qué entornos aplica (production/preview/development)
}
