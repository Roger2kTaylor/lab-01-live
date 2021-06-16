# ////////////////////////////////////////////
# OUTPUT
# ////////////////////////////////////////////

# Random String generation output
output "resource_code" {
  value = random_string.resource_code.result
}

# S3 Bucket ARN
output "s3_bucket_arn" {
  value       = aws_s3_bucket.terraform_state.arn
  description = "The ARN of the S3 bucket"
}

# Dynamodb Table Name
output "dynamodb_table_name" {
  value       = aws_dynamodb_table.terraform_locks.name
  description = "The name of the DynamoDB table"
}

