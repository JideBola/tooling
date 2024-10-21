variable "ami_id" {
  description = "The AMI ID for the Jenkins server"
  type        = string
  default     = "ami-0e8d228ad90af673b"
}

variable "instance_type" {
  description = "The instance type for the Jenkins server"
  type        = string
  default     = "t2.medium"
}

variable "security_group_id" {
  description = "The security group ID to attach to the instance"
  type        = string
}

variable "key_name" {
  description = "The key name for the Jenkins server"
  type        = string
  default     = "Docker"
}

variable "main-region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "eu-west-2"
}
