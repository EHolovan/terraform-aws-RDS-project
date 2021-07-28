module "db" {
  source  = "../"
  version = "~> 1.0.0"

  name           = "rds_db_team3_are_the_best"
  engine         = "aurora"
  engine_version = "5.6.10a"
  instance_class  = "db.r4.large"

  vpc_id  = ""
  subnets = ["", ""]

//   replica_count           = 
  allowed_security_groups = [""]
  allowed_cidr_blocks     = [""]

// storage_encrypted   = true
  apply_immediately   = true
// monitoring_interval = 10
  aws_ssm_parameter_name = "/devops/us-east-1/passwords/team3db-cluster"

}