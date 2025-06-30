output "bucket_use1_output" {
  value       = module.bucket_use1.bucket_id
  description = "Bucket created in us-east-1"
}

output "bucket_usw2_output" {
  value       = module.bucket_usw2.bucket_id
  description = "Bucket created in us-west-2"
}
