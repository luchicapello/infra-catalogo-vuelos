
module "core" {
  source       = "../../modules/railway-core"
  project_name = "catalogo-vuelos"
  service_name = "backend"
}

# Mostramos los IDs generados
output "project_id" {
  value = module.core.project_id
}

output "service_id" {
  value = module.core.service_id
}

module "vercel_core" {
  source = "../../modules/vercel-core"

  project_name = "copia-catalogo-vuelos-front"

  framework = "vite"

  git_repo = "capelloprueba/CopiaCatalogoVuelos"
}

output "vercel_project_id" {
  value = module.vercel_core.project_id
}


