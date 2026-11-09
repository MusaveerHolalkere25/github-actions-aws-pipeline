variable "region" {
  description = "AWS region."
  type        = string
  default     = "eu-west-1"
}

variable "project" {
  description = "Project prefix. Must match the bootstrap project, because the apply role can only write to buckets named <project>-sandbox-*."
  type        = string
  default     = "gha-pipeline-demo"
}
