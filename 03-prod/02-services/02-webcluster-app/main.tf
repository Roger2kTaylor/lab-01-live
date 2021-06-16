# ////////////////////////////////////////////
# RESOURCES
# ////////////////////////////////////////////

# Web Cluster Module
module "webclusterapp" {
  source = "../../../01-modules/00-services/00-webcluster-app"

  cluster_name           = "webservers-prod"
  db_remote_state_bucket = "remotetfstate-38uf2"
  db_remote_state_key    = "04-prod/01-data-stores/00-mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 4

}


# AutoScale Out Schedule Business Hours - 9 a.m. every day
resource "aws_autoscaling_schedule" "scale_out_during_business_hours" {
  scheduled_action_name  = "scale-out-during-businesshours"
  min_size               = 2
  max_size               = 10
  desired_capacity       = 10
  recurrence             = "0 9 * * *"
  autoscaling_group_name = module.webclusterapp.asg_name
}

# AutoScale In Schedule Business Hours - 5 p.m. every day
resource "aws_autoscaling_schedule" "scale_in_at_night" {
  scheduled_action_name  = "scale-in-at-night"
  min_size               = 2
  max_size               = 10
  desired_capacity       = 2
  recurrence             = "0 17 * * *"
  autoscaling_group_name = module.webclusterapp.asg_name
}