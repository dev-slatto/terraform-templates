module "development-k8s-cluster" {
  source = "../modules/aws-eks-cluster"

  worker_group_one_instance_type = "t3.nano"
  worker_group_two_instance_type = "t3.small"
}


module "application-one" {
  source = "../modules/aws-elastic-beanstalk"

  profile                   = "../.aws/profiles/application-one"
  application_name          = "Application name for application one"
  application_namespace     = "product-team"
  application_description   = "A description of the application"
  application_environment   = "development"
  application_instance_type = "t3.micro"
  application_max_size      = "6"
}

module "web-frontend" {
  source = "../modules/aws-cloudfront"

  s3_bucket_id                        = "mybucket"
  s3_bucket_name                      = "My bucket"
  s3_origin_id                        = "myS3Origin"
  s3_origin_access_identity           = "origin-access-identity/cloudfront/ABCDEFG1234567"
  s3_distribution_comment             = "Some comment"
  s3_distribution_default_root_object = "index.html"
  s3_distribution_logging_bucket      = "mylogs.s3.amazonaws.com"
  s3_distribution_logging_prefix      = "myprefix"
  s3_distribution_aliases             = ["mysite.example.com", "yoursite.example.com"]
  environment                         = "development"
}
