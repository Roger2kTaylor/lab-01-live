# ////////////////////////////////////////////
# TERRAFORM SETTINGS
# ////////////////////////////////////////////

# Specify Terraform version
terraform {
  required_version = "~> 1.0.0"

  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }

}

