module "aws_es" {
  source = "git::https://github.com/lgallard/terraform-aws-elasticsearch.git"
  domain_name           = "eks-demo-logging"
  elasticsearch_version = "7.1"
  cluster_config = {
    dedicated_master_enabled = "true"
    dedicated_master_count   = "2"
    instance_count           = "2"
    instance_type            = "m5.large.elasticsearch"
    zone_awareness_enabled   = "true"
    availability_zone_count  = "2"
  }

  ebs_options = {
    ebs_enabled = "true"
    volume_size = "25"
  }

  log_publishing_options = {
    enabled                  = "true"
    log_type                 = "INDEX_SLOW_LOGS"
  }

  advanced_options = {
    "rest.action.multi.allow_explicit_index" = "true"
  }

  node_to_node_encryption_enabled                = "true"
  snapshot_options_automated_snapshot_start_hour = "23"
}