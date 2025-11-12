
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