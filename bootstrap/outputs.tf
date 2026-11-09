output "state_bucket_name" {
  description = "Terraform state bucket. Set as the repository variable TF_STATE_BUCKET."
  value       = aws_s3_bucket.state.id
}

output "plan_role_arn" {
  description = "Read-only role for plans. Set as the repository variable AWS_PLAN_ROLE_ARN."
  value       = aws_iam_role.plan.arn
}

output "apply_role_arn" {
  description = "Role for applies, restricted to the protected environment. Set as the repository variable AWS_APPLY_ROLE_ARN."
  value       = aws_iam_role.apply.arn
}

output "repository_variables" {
  description = "Values to add under Settings > Secrets and variables > Actions > Variables."
  value = {
    AWS_REGION         = var.region
    TF_STATE_BUCKET    = aws_s3_bucket.state.id
    AWS_PLAN_ROLE_ARN  = aws_iam_role.plan.arn
    AWS_APPLY_ROLE_ARN = aws_iam_role.apply.arn
  }
}
