variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
}
