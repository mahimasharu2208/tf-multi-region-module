output "bucket_id" {
  value       = aws_s3_bucket.this.id
  description = "The ID (name) of the S3 bucket"
}