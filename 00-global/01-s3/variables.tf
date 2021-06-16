# ////////////////////////////////////////////
# VARIABLES
# ////////////////////////////////////////////

# EC2 Region 
variable "region" {
  type        = string
  description = "The AWS region."
  default     = "us-east-2"
}

# AWS Profile
variable "profile" {
  type        = string
  description = "AWS Profile"
  default     = "default"
}


# AWS S3 Bucket 
variable "bucket" {
  type        = string
  description = "AWS S3 Bucket"
}


# AWS Dynamodb Table
variable "dynamodb_table" {
  type        = string
  description = "AWS Dynamodb Table"
}

