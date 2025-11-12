# Crea el proyecto base de Railway
resource "railway_project" "this" {
  name = var.project_name
}

# Crea el servicio principal dentro del proyecto
resource "railway_service" "this" {
  name       = var.service_name
  project_id = railway_project.this.id
}

