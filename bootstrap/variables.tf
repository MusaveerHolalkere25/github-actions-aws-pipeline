variable "region" {
  description = "AWS region."
  type        = string
  default     = "eu-west-1"
}

variable "project" {
  description = "Project prefix used for the state bucket, IAM roles and the sandbox bucket names."
  type        = string
  default     = "gha-pipeline-demo"
}

variable "github_owner" {
  description = "GitHub user or organization that owns the repository."
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name that is allowed to assume the roles."
  type        = string
  default     = "github-actions-aws-pipeline"
}

variable "github_environment" {
  description = "GitHub environment whose jobs may assume the apply role (protect it with required reviewers)."
  type        = string
  default     = "production"
}

variable "create_oidc_provider" {
  description = "Create the GitHub OIDC provider. Set to false if the account already has one (only one is allowed per account)."
  type        = bool
  default     = true
}
