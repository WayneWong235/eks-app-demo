module "db" {
  source            = "terraform-aws-modules/rds/aws"
  version           = "~> 2.0"
  identifier        = "${var.db-identifier}"
  engine            = "${var.db-engine}"
  engine_version    = "${var.db-engine_version}"
  instance_class    = "${var.db-instance_class}"
  allocated_storage = "${var.db-allocated_storage}"
  name              = "${var.db-name}"
  username          = "${var.db-username}"
  password          = "${var.db-password}"
  port              = "3306"
  vpc_security_group_ids = "${var.db-vpc_security_group_ids}"
  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"
  # Enhanced Monitoring - see example for details on how to create the role
  # by yourself, in case you don't want to create it automatically
  // monitoring_interval = "30"
  // monitoring_role_name = "MyRDSMonitoringRole"
  // create_monitoring_role = true
  # DB parameter group
  family = "mysql5.7"
  # DB option group
  major_engine_version = "5.7"
  publicly_accessible = "${var.db-publicly_accessible}"

  # DB subnet group
  subnet_ids = "${var.db-subnet_ids}"
  multi_az = "${var.db-multi_az}"
  parameters = [
    {
      name = "character_set_client"
      value = "utf8"
    },
    {
      name = "character_set_server"
      value = "utf8"
    }
  ]
}

// resource "aws_db_instance" "demo" {
//   identifier           = "${var.db-identifier}"
//   allocated_storage    = "${var.db-allocated_storage}"
//   storage_type         = "${var.db-storage_type}"
//   engine               = "${var.db-engine}"
//   engine_version       = "${var.db-engine_version}"
//   instance_class       = "${var.db-instance_class}"
//   name                 = "${var.db-name}"
//   username             = "${var.db-username}"
//   password             = "${var.db-password}"
//   parameter_group_name = "${var.db-parameter_group_name}"
//   max_allocated_storage = "${var.db-max_allocated_storage}"
//   vpc_security_group_ids = ["${var.db-vpc_security_group_ids}"]
//   subnet_ids = ["${var.db-subnet_ids}"]
//   // maintenance_window = "Mon:00:00-Mon:03:00"
//   // backup_window      = "03:00-06:00"
//   // backup_retention_period = 0
//   multi_az = "${var.db-multi_az}"
// }