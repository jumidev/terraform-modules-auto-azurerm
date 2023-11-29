output "name" {
  value = azurerm_resource_management_private_link.this.name
}

output "resource_group_name" {
  value = azurerm_resource_management_private_link.this.resource_group_name
}

output "location" {
  value = azurerm_resource_management_private_link.this.location
}

output "id" {
  description = "The ID of the Resource Management Private Link."
  value       = azurerm_resource_management_private_link.this.id
}

