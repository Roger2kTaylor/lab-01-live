# ////////////////////////////////////////////
# BACKEND RESOURCE
# ////////////////////////////////////////////

terraform {
  backend "s3" {
    # Partial configuration. The other settings (e.g., bucket, region) will be
    # passed in from a file via -backend-config arguments to 'terraform init'
    key     = "00-global/01-s3/terraform.tfstate"
    profile = "roger-lab"
  }
}

