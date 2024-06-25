output "managed_disk_id" {
  value = azurerm_disk_sas_token.this.managed_disk_id
}

output "duration_in_seconds" {
  value = azurerm_disk_sas_token.this.duration_in_seconds
}

output "access_level" {
  value = azurerm_disk_sas_token.this.access_level
}

output "id" {
  description = "The ID of the Disk Export resource."
  value       = azurerm_disk_sas_token.this.id
}

output "sas_url" {
  description = "The computed Shared Access Signature (SAS) of the Managed Disk."
  value       = azurerm_disk_sas_token.this.sas_url
}

