variable "project_name" {
  description = "Nombre del proyecto en Vercel"
  type        = string
}

variable "framework" {
  description = "Framework del frontend (nextjs, vite, react, etc.)"
  type        = string
  default     = "vite" # React + Vite
}

variable "root_directory" {
  description = "Carpeta dentro del repo donde está el frontend"
  type        = string
  default     = "/"    # si el front está en la raíz del repo
}

variable "git_repo" {
  description = "Repositorio Git en formato usuario/repo (para conectar a GitHub)"
  type        = string
}