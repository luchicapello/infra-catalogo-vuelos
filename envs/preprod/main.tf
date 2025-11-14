module "railway_env" {
  source = "../../modules/railway-service"

  project_id = "82e1c0c8-3601-4c1e-ac07-408d77fbc01e"
  service_id = "b8f493f8-7097-45ce-802b-25466b4bff69"

  environment_name = "preprod"

  env_vars_common = var.env_vars_common
  env_vars        = var.env_vars
}

module "vercel_preprod_env" {
  source = "../../modules/vercel-app"


  project_id = "prj_3yevkyuyD6ZEOFPFBfe6qbJiJoso"

  env_vars_common = {}
  env_vars        = {}

  environment_name = "preprod"
  targets = ["preview"]

}
