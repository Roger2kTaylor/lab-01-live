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
  default     = "roger-lab"
}



