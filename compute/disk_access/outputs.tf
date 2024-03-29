output "location" {
  value = azurerm_disk_access.this.location
}

output "name" {
  value = azurerm_disk_access.this.name
}

output "resource_group_name" {
  value = azurerm_disk_access.this.resource_group_name
}

output "tags" {
  value = azurerm_disk_access.this.tags
}

output "tags" {
  description = "A mapping of tags which should be assigned to the Disk Access. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_disk_access.this.tags
}

output "id" {
  description = "The ID of the Disk Access resource."
  value       = azurerm_disk_access.this.id
}

