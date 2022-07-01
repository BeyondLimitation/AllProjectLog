output "bucket_region" {
  description = "'lee-save-projects-results' Bucket의 Region"
  value       = module.bucket_save_projects.s3_bucket_region
}

output "bucket_arn" {
  description = "'lee-save-projects-results' Bucket의 ARN"
  value       = module.bucket_save_projects.s3_bucket_arn
}

output "bucket_id" {
  description = "'lee-save-projects-results' Bucket의 ID"
  value       = module.bucket_save_projects.s3_bucket_id
}
