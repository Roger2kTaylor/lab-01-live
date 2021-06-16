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









/*

# HTTP Port
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}

# SSH Port
variable "ssh_port" {
  description = "The port the server will use for SSH requests"
  type        = number
  default     = 22
}


variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "alb"
}


variable "instance_sg_name" {
  description = "The name of the security group for the EC2 Instances"
  type        = string
  default     = "instance-sg"
}

variable "alb_sg_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "alb-sg"
}

*/