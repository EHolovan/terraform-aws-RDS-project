module "db" {
  source  = "../"
  version = "~> 1.0.0"

  name           = "rds_db_team3_are_the_best"
  engine         = "aurora"
  engine_version = "5.6.10a"
  instance_class  = "db.r4.large"

  vpc_id  = "aws_vpc.main.id"
  subnets = ["subnet-04ebd5261c9059397", "subnet-0e30c322b02c3ea49", "subnet-0d71383e48bb980c9", "subnet-00fcb3cfa493d7ede", "subnet-0af6be2f81390aee1", "subnet-0bb8a7fa1b01cf2a3"]

//   replica_count           = 
  allowed_security_groups = ["sg-0a6ed2ac663995399"]
  allowed_cidr_blocks     = ["10.0.0.0/16"]

// storage_encrypted   = true
  apply_immediately   = true
// monitoring_interval = 10
  aws_ssm_parameter_name = "/devops/us-east-1/passwords/team3db-cluster"

}