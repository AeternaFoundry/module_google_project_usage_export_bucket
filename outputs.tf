output "project_usage_export_buckets_id" {
  description = "Map of id values across all project_usage_export_buckets, keyed the same as var.project_usage_export_buckets except keys with no id are omitted"
  value       = { for k, v in google_project_usage_export_bucket.project_usage_export_buckets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_usage_export_buckets_bucket_name" {
  description = "Map of bucket_name values across all project_usage_export_buckets, keyed the same as var.project_usage_export_buckets except keys with no bucket_name are omitted"
  value       = { for k, v in google_project_usage_export_bucket.project_usage_export_buckets : k => v.bucket_name if v.bucket_name != null && length(v.bucket_name) > 0 }
}
output "project_usage_export_buckets_deletion_policy" {
  description = "Map of deletion_policy values across all project_usage_export_buckets, keyed the same as var.project_usage_export_buckets except keys with no deletion_policy are omitted"
  value       = { for k, v in google_project_usage_export_bucket.project_usage_export_buckets : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "project_usage_export_buckets_prefix" {
  description = "Map of prefix values across all project_usage_export_buckets, keyed the same as var.project_usage_export_buckets except keys with no prefix are omitted"
  value       = { for k, v in google_project_usage_export_bucket.project_usage_export_buckets : k => v.prefix if v.prefix != null && length(v.prefix) > 0 }
}
output "project_usage_export_buckets_project" {
  description = "Map of project values across all project_usage_export_buckets, keyed the same as var.project_usage_export_buckets except keys with no project are omitted"
  value       = { for k, v in google_project_usage_export_bucket.project_usage_export_buckets : k => v.project if v.project != null && length(v.project) > 0 }
}

