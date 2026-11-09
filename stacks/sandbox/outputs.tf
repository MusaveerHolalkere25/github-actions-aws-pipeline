output "artifacts_bucket" {
  description = "Name of the demo artifacts bucket."
  value       = aws_s3_bucket.artifacts.id
}
