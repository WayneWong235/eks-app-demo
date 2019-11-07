#
# Variables Configuration
#

variable "cluster-name" {
  type    = "string"
  default = "terraform-eks-demo"
}

variable "db-identifier" {
  type    = "string"
  default = "demoflask"
}

variable "db-allocated_storage" {
  type    = number
  default = 20
}

variable "db-storage_type" {
  type    = "string"
  default = "gp2"
}

variable "db-engine" {
  type    = "string"
  default = "mysql"
}

variable "db-engine_version" {
  type    = "string"
  default = "5.7.26"
}

variable "db-instance_class" {
  type    = "string"
  default = "db.t3.medium"
}

variable "db-name" {
  type    = "string"
  default = "demoflask"
}

variable "db-username" {
  type    = "string"
  default = "admin"
}

variable "db-password" {
  type    = "string"
  default = "Waynewong24."
}

variable "db-parameter_group_name" {
  type    = "string"
  default = "default.mysql5.7"
}

variable "db-max_allocated_storage" {
  type    = number
  default = 100
}

variable "db-vpc_security_group_ids" {
  type    = "list"
  default = ["sg-0a6ddf6412c95197d"]
}

variable "db-subnet_ids" {
  type    = "list"
  default = ["subnet-94af84f0","subnet-2befde6d","subnet-eeb7eb98"]
}

variable "db-multi_az" {
  default = false
}

variable "db-publicly_accessible" {
  default = true
}