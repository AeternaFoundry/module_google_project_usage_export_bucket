variable "project_usage_export_buckets" {
  description = <<EOT
Map of project_usage_export_buckets, attributes below
Required:
    - bucket_name
Optional:
    - deletion_policy
    - prefix
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    bucket_name     = string
    deletion_policy = optional(string)
    prefix          = optional(string)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

