variable "profile" {
  description = "Name of your profile inside ~/.aws/credentials"
}

variable "application_name" {
  description = "Name of your application"
}

variable "application_namespace" {
  description = "Namespace of your application"
}

variable "application_description" {
  description = "Sample application based on Elastic Beanstalk & Docker"
}

variable "application_environment" {
  description = "Deployment stage e.g. 'staging', 'production', 'test', 'integration'"
}

variable "application_instance_type" {
  default     = "t3.micro"
  description = "The instance type of your application"
}

variable "application_max_size" {
  default     = "2"
  description = "The maximal number of instances to run of your application"
}

variable "region" {
  default     = "eu-north-1"
  description = "Defines where your app should be deployed"
}
