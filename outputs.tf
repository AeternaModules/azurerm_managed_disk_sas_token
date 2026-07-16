output "managed_disk_sas_tokens_id" {
  description = "Map of id values across all managed_disk_sas_tokens, keyed the same as var.managed_disk_sas_tokens"
  value       = { for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_disk_sas_tokens_access_level" {
  description = "Map of access_level values across all managed_disk_sas_tokens, keyed the same as var.managed_disk_sas_tokens"
  value       = { for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : k => v.access_level if v.access_level != null && length(v.access_level) > 0 }
}
output "managed_disk_sas_tokens_duration_in_seconds" {
  description = "Map of duration_in_seconds values across all managed_disk_sas_tokens, keyed the same as var.managed_disk_sas_tokens"
  value       = { for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : k => v.duration_in_seconds if v.duration_in_seconds != null }
}
output "managed_disk_sas_tokens_managed_disk_id" {
  description = "Map of managed_disk_id values across all managed_disk_sas_tokens, keyed the same as var.managed_disk_sas_tokens"
  value       = { for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : k => v.managed_disk_id if v.managed_disk_id != null && length(v.managed_disk_id) > 0 }
}
output "managed_disk_sas_tokens_sas_url" {
  description = "Map of sas_url values across all managed_disk_sas_tokens, keyed the same as var.managed_disk_sas_tokens"
  value       = { for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : k => v.sas_url if v.sas_url != null && length(v.sas_url) > 0 }
  sensitive   = true
}

