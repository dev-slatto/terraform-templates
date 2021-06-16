module "aws-eks-cluster" {
  source = "../modules/aws-eks-cluster"

  worker_group_one_instance_type = "t3.small"
  worker_group_two_instance_type = "t3.medium"
}
