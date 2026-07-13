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
  # --- Unconfirmed validation candidates, derived from azurerm_managed_disk_sas_token's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: managed_disk_id
  #   source:    [from commonids.ValidateManagedDiskID] !ok
  # path: managed_disk_id
  #   source:    [from commonids.ValidateManagedDiskID] err != nil
  # path: duration_in_seconds
  #   condition: value >= 30
  #   message:   must be at least 30
  # path: access_level
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

