module "railway_env" {
  source = "../../modules/railway-service"

  project_id = "7f10fff8-e07f-4187-95aa-4e8e613c8162"
  service_id = "3bf2918c-b736-4f48-8faf-a846a5f4f74f"

  environment_name = "main"

  env_vars_common = var.env_vars_common
  env_vars        = var.env_vars
}

module "vercel_main_env" {
  source = "../../modules/vercel-app"

  project_id = var.vercel_project_id

  env_vars_common = {}
  env_vars        = {}

  environment_name = "main"
  target           = "production"
}

