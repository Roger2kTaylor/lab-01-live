# ////////////////////////////////////////////
# RESOURCES
# ////////////////////////////////////////////

# AWS DB Instance
resource "aws_db_instance" "db_instance" {
  identifier_prefix = "stage-"
  engine            = "mysql"
  allocated_storage = 10
  instance_class    = "db.t2.micro"
  name              = "stage_database"
  username          = "admin"
  # password = data.aws_secretsmanager_secret_version.db_password.secret_string
  password = "My$ql20dbexam"

  skip_final_snapshot = true

  # DB Instance Tags
  tags = {
    Name = "Stage MySql Database"
  }

}

/* data "aws_secretsmanager_secret_version" "db_password" {
    secret_id = "mysql-master-password-stage"
}
*/

