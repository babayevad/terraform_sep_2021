resource "aws_db_instance" "default" {
  allocated_storage         = 10
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  identifier                = "${var.env}-db-instance" #name for rds instance 
  name                      = "wordpress"              # name for database , not for rds instance 
  username                  = "admin"
  password                  = random_password.password.result
  skip_final_snapshot       = var.snapshot #true
  final_snapshot_identifier = var.snapshot == true ? null : "${var.env}-snapshot"
  publicly_accessible       = var.env == "dev" ? true : false
}
