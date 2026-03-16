# =========================
# VPC Outputs
# =========================

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_1_id" {
  description = "ID of public subnet 1"
  value       = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  description = "ID of public subnet 2"
  value       = aws_subnet.public_2.id
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.public_rt.id
}

# =========================
# Security Group Outputs
# =========================

output "alb_security_group_id" {
  description = "Security group ID for the Application Load Balancer"
  value       = aws_security_group.alb_sg.id
}

output "ecs_security_group_id" {
  description = "Security group ID for ECS tasks"
  value       = aws_security_group.ecs_sg.id
}

#============
#ALB DNS Name
#============
output "alb_dns_name" {
  value = aws_lb.app_alb.dns_name
}

# =========================
# ECR Outputs
# =========================

output "ecr_repository_name" {
  description = "ECR repository name"
  value       = aws_ecr_repository.app_repo.name
}

output "ecr_repository_url" {
  description = "ECR repository URL (used for docker tag and push)"
  value       = aws_ecr_repository.app_repo.repository_url
}

############################################
# Outputs: ECS + CloudWatch + IAM
############################################

output "ecs_cluster_name" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.fyp_cluster.name
}

output "ecs_cluster_arn" {
  description = "ECS cluster ARN"
  value       = aws_ecs_cluster.fyp_cluster.arn
}

output "cloudwatch_log_group_name" {
  description = "CloudWatch log group name for ECS logs"
  value       = aws_cloudwatch_log_group.fyp_log.name
}

output "cloudwatch_log_group_arn" {
  description = "CloudWatch log group ARN"
  value       = aws_cloudwatch_log_group.fyp_log.arn
}

output "ecs_task_execution_role_name" {
  description = "IAM role name used by ECS tasks to pull from ECR and write logs"
  value       = aws_iam_role.ecs_task_execution_role.name
}

output "ecs_task_execution_role_arn" {
  description = "IAM role ARN used by ECS tasks to pull from ECR and write logs"
  value       = aws_iam_role.ecs_task_execution_role.arn
}


output "ecs_service_name" {
  description = "ECS service name"
  value       = aws_ecs_service.app_service.name
}

output "ecs_service_id" {
  description = "ECS service identifier (provider-safe; often the ARN)"
  value       = aws_ecs_service.app_service.id
}


output "frontend_bucket_name" {
  description = "Frontend S3 bucket name"
  value       = aws_s3_bucket.frontend_bucket.bucket
}

output "cloudfront_domain_name" {
  description = "CloudFront domain name for the frontend"
  value       = aws_cloudfront_distribution.frontend_cdn.domain_name
}