# Crea el proyecto en Vercel
resource "vercel_project" "this" {
  name = var.project_name

  framework     = var.framework
  git_repository = {
    type = "github"
    repo = var.git_repo 
  }
}