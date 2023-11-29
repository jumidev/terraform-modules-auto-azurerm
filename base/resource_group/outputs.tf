output "location" {
  value = azurerm_resource_group.this.location
}

output "name" {
  value = azurerm_resource_group.this.name
}

output "managed_by" {
  value = azurerm_resource_group.this.managed_by
}

output "tags" {
  value = azurerm_resource_group.this.tags
}

output "id" {
  description = "The ID of the Resource Group."
  value       = azurerm_resource_group.this.id
}

