module "railway_env" {
  source            = "../../modules/railway-service"

  # IDs obtenidos en envs/global
  project_id        = "7f10fff8-e07f-4187-95aa-4e8e613c8162"
  service_id        = "3bf2918c-b736-4f48-8faf-a846a5f4f74f"

  # Nombre del environment
  environment_name  = "main"

  # Variables comunes y específicas (se definen en variables.tf y terraform.tfvars)
  env_vars_common   = var.env_vars_common
  env_vars          = var.env_vars

}
