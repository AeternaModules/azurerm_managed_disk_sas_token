output "managed_disk_sas_tokens_access_level" {
  description = "Map of access_level values across all managed_disk_sas_tokens, keyed the same as var.managed_disk_sas_tokens"
  value       = { for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : k => v.access_level }
}
output "managed_disk_sas_tokens_duration_in_seconds" {
  description = "Map of duration_in_seconds values across all managed_disk_sas_tokens, keyed the same as var.managed_disk_sas_tokens"
  value       = { for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : k => v.duration_in_seconds }
}
output "managed_disk_sas_tokens_managed_disk_id" {
  description = "Map of managed_disk_id values across all managed_disk_sas_tokens, keyed the same as var.managed_disk_sas_tokens"
  value       = { for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : k => v.managed_disk_id }
}
output "managed_disk_sas_tokens_sas_url" {
  description = "Map of sas_url values across all managed_disk_sas_tokens, keyed the same as var.managed_disk_sas_tokens"
  value       = { for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : k => v.sas_url }
  sensitive   = true
}

