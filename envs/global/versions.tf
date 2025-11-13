terraform {
  required_version = ">= 1.6.0"

  required_providers {
    railway = {
      source  = "terraform-community-providers/railway"
      version = "~> 0.6.0"
    }

    vercel = {
      source  = "vercel/vercel"
      version = "~> 1.8.0"
    }
  }
}
