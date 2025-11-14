locals {
  merged_vars = merge(var.env_vars_common, var.env_vars)
}
