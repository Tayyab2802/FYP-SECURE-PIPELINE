# =========================
# AWS Configuration
# =========================

variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
}

# =========================
# Project Metadata
# =========================

variable "project_name" {
  description = "Project name used for tagging AWS resources"
  type        = string
}

# =========================
# Networking Configuration
# =========================

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for public subnet 2"
  type        = string
}

variable "az_1" {
  description = "Availability Zone for public subnet 1"
  type        = string
}

variable "az_2" {
  description = "Availability Zone for public subnet 2"
  type        = string
}

