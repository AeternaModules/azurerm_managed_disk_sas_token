output "managed_disk_sas_tokens" {
  description = "All managed_disk_sas_token resources"
  value       = azurerm_managed_disk_sas_token.managed_disk_sas_tokens
  sensitive   = true
}
output "managed_disk_sas_tokens_access_level" {
  description = "List of access_level values across all managed_disk_sas_tokens"
  value       = [for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : v.access_level]
}
output "managed_disk_sas_tokens_duration_in_seconds" {
  description = "List of duration_in_seconds values across all managed_disk_sas_tokens"
  value       = [for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : v.duration_in_seconds]
}
output "managed_disk_sas_tokens_managed_disk_id" {
  description = "List of managed_disk_id values across all managed_disk_sas_tokens"
  value       = [for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : v.managed_disk_id]
}
output "managed_disk_sas_tokens_sas_url" {
  description = "List of sas_url values across all managed_disk_sas_tokens"
  value       = [for k, v in azurerm_managed_disk_sas_token.managed_disk_sas_tokens : v.sas_url]
  sensitive   = true
}

