variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "Project name used for tagging AWS resources"
  type        = string
  default     = "fyp-secure-pipeline"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for public subnet 2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "az_1" {
  description = "Availability Zone for public subnet 1"
  type        = string
  default     = "eu-west-2a"
}

variable "az_2" {
  description = "Availability Zone for public subnet 2"
  type        = string
  default     = "eu-west-2b"
}


