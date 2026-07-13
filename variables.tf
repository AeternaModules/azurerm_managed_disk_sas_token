variable "managed_disk_sas_tokens" {
  description = <<EOT
Map of managed_disk_sas_tokens, attributes below
Required:
    - access_level
    - duration_in_seconds
    - managed_disk_id
EOT

  type = map(object({
    access_level        = string
    duration_in_seconds = number
    managed_disk_id     = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.managed_disk_sas_tokens : (
        v.duration_in_seconds >= 30
      )
    ])
    error_message = "must be at least 30"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

