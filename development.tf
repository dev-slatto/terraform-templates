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
