# ////////////////////////////////////////////
# BACKEND RESOURCE
# ////////////////////////////////////////////

terraform {
  backend "s3" {
    # Partial configuration. The other settings (e.g., bucket, region) will be
    # passed in from a file via -backend-config arguments to 'terraform init'
    key     = "04-prod/02-services/02-webcluster-app/terraform.tfstate"
    profile = "roger-lab"
  }
}

