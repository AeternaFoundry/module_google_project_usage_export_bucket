resource "google_project_usage_export_bucket" "project_usage_export_buckets" {
  for_each = var.project_usage_export_buckets

  bucket_name     = each.value.bucket_name
  deletion_policy = each.value.deletion_policy
  prefix          = each.value.prefix
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

