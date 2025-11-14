terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 1.8.0"
    }

    railway = {
      source  = "terraform-community-providers/railway"
      version = "~> 0.6.0"
    }
  }
}