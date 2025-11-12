output "project_id" {
  description = "ID del proyecto Railway creado"
  value       = railway_project.this.id
}

output "service_id" {
  description = "ID del servicio Railway creado"
  value       = railway_service.this.id
}