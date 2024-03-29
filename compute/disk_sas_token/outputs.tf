output "managed_disk_id" {
  value = azurerm_disk_sas_token.this.managed_disk_id
}

output "duration_in_seconds" {
  value = azurerm_disk_sas_token.this.duration_in_seconds
}

output "access_level" {
  value = azurerm_disk_sas_token.this.access_level
}

output "access_level" {
  description = "The level of access required on the disk. Supported are Read, Write. Changing this forces a new resource to be created. Refer to the [SAS creation reference from Azure](https://docs.microsoft.com/rest/api/compute/disks/grant-access) for additional details on the fields above. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_disk_sas_token.this.access_level
}

output "id" {
  description = "The ID of the Disk Export resource."
  value       = azurerm_disk_sas_token.this.id
}

output "sas_url" {
  description = "The computed Shared Access Signature (SAS) of the Managed Disk."
  value       = azurerm_disk_sas_token.this.sas_url
}

