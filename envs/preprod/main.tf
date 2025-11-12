module "railway_env" {
  source = "../../modules/railway-service"

  environment_name = "preprod"

  # IDs del proyecto y servicio que ya confirmaste
  project_id = "7f10fff8-e07f-4187-95aa-4e8e613c8162"
  service_id = "3bf2918c-b736-4f48-8faf-a846a5f4f74f"

  # Variables comunes (pueden estar vacías o compartidas entre ambientes)
  env_vars_common = {
    JAVA_OPTS = "-Xms256m -Xmx512m"
  }

  # Variables específicas del ambiente PREPROD
  env_vars = {
    SPRING_PROFILES_ACTIVE = "preprod"
    DB_URL                 = "jdbc:postgresql://blgyj5rujfp4pkxoxa2nh-postgresql.services.clever-cloud.com:50013/blgyj5rujfp4pkxoxa2nh?sslmode=require"
    DB_USERNAME            = "u1x4y3mgf15lw8sk1gsx"
    DB_PASSWORD            = "nFUXZnE75vV3PY3lW6kHNJA1w5nD5"
    APP_KEY                = "dapps2-2025"
    EVENTS_MODE            = "direct"
  }
}
