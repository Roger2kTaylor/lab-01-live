# ////////////////////////////////////////////
# RESOURCES
# ////////////////////////////////////////////

# Web Cluster Module
module "webclusterapp" {
  source = "../../../01-modules/00-services/00-webcluster-app"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "remotetfstate-38uf2"
  db_remote_state_key    = "03-stage/01-data-stores/00-mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2

}

# Example adding New Rules to Module Security group externally
resource "aws_security_group_rule" "allow_testing_inbound" {
  type              = "ingress"
  security_group_id = module.webclusterapp.alb_security_group_id
  from_port         = 12345
  to_port           = 12345
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

