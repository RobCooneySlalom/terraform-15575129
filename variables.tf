variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Filter values when searching for AMI"

  type = object({
    name  = string
    owner = string
  })

  default = {
    name  = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnami
  }
}

variable "env" {
  description = "Development environment config"

  type = object({
    name           = string
    network_prefix = string
  })

  default = {
    name           = "terraform-course-dev"
    network_prefix = "10.0"
  }
}

variable "autoscaling_config" {
  description = "Configuration for EC2 autoscaling group"

  type = object({
    min_size = number
    max_size = number
  })

  default = {
    min_size = 1
    max_size = 2
  }
}