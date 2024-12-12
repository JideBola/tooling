variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
  default     = "ami-0e8d228ad90af673b"
}

variable "instance_type" {
  description = "The instance type for the instances"
  type        = string
  default     = "t2.medium"
}

variable "instance_type_sonar" {
  description = "The instance type for the instances"
  type        = string
  default     = "t2.large"
}

variable "root_volume_size" {
  description = "The size of the root volume in GB"
  type        = number
  default     = 16 
}


variable "key_name" {
  description = "The key name for the instances"
  type        = string
  default     = "Docker"
}

###########################
#Sonaqube instance
##########################
variable "security_group_id" {
  type    = string
  default = "sg-03a5075f2abdf953d"
}

# variable "subnet_id" {
#   type    = string
#   default = "	subnet-043a68d41f5a24e84"
# }

# variable "security_group_id" {
#   description = "The security group ID to attach to the instance"
#   type        = string

# }
##################
#sonarqube db 
###################
variable "subnet_id" {
  description = "The subnet ID where the instance will be deployed"
  type        = string
  default     = "subnet-043a68d41f5a24e84"
}

# variable "db_name" {
#   description = "The name of the PostgreSQL database"
#   type        = string
#   default     = "sonarqube"
# }

# variable "db_username" {
#   description = "The username for the PostgreSQL database"
#   type        = string
#   default     = "sonar"
# }

# variable "db_password" {
#   description = "The password for the PostgreSQL database"
#   type        = string
#   sensitive   = true
#   default     = "Team@123"
# }

# variable "db_security_group_id" {
#   description = "The security group ID for the PostgreSQL database"
#   type        = list(string)
#   default     = ["sg-03a5075f2abdf953d"]
# }

# variable "db_subnet_group" {
#   description = "The subnet group for the PostgreSQL database"
#   type        = string
#   default     = "default-vpc-0f1a715876931e604"
# }

variable "s3_bucket" {
  description = "The name of the S3 bucket for storing Terraform state"
  type        = string
  default     = "jide-terraform-state-bucket"
}

variable "dynamodb_table" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
  default     = "terraform-lock-table"
}

variable "main-region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "eu-west-2"
}
