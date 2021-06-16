# ////////////////////////////////////////////
# RESOURCES
# ////////////////////////////////////////////

# Random String function
resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false
}

# AWS S3 Bucket - State Mgmt.
resource "aws_s3_bucket" "terraform_state" {
  bucket = "${var.bucket}-${random_string.resource_code.id}"
  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = false
  }
  # Enable versioning so we can see the full revision history of our
  # state files
  versioning {
    enabled = true
  }
  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

# AWS Dynamodb Table - Locks Mgmt.
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "${var.dynamodb_table}-${random_string.resource_code.id}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}


