variable "aws_ssm_parameter_name" {
  default = "/devops/us-east-1/passwords/team3db-cluster"
}
variable "instance_class" {
  type    = string
  default = "db.r4.large"
}
variable "cluster_identifier" {
  default = "dbname"
}
variable "engine" {
  default = "aurora"
  type    = string
}
variable "engine_version" {
  default = "5.6.10a"
}
variable "database_name" {
  default = "dbname"
}
variable "master_username" {
  default = "team3db"
}
