module "railway_env" {
  source = "../../modules/railway-service"

  project_id = "f3b5033b-40ea-479e-8309-0998f99caceb"
  service_id = "f0b212be-e620-439f-9e9e-3fe261b1a2e6"

  environment_name = "preprod"

  env_vars_common = var.env_vars_common
  env_vars        = var.env_vars
}

module "vercel_preprod_env" {
  source = "../../modules/vercel-app"


  project_id = "prj_Bk0y1c4RQYcbSVSXcaHAi0FC74P7"

  env_vars_common = {}
  env_vars        = {}

  environment_name = "preprod"
  targets = ["preview"]

}
