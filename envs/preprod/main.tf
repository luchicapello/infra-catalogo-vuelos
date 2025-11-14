module "railway_env" {
  source = "../../modules/railway-service"

  project_id = "a8c1fcef-13ab-4a40-af03-d7f9fa00c2d5"
  service_id = "c144efb2-c160-4f5a-b320-553b5d234602"

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
