output "name" {
  value = azurerm_api_management_group.this.name
}

output "resource_group_name" {
  value = azurerm_api_management_group.this.resource_group_name
}

output "api_management_name" {
  value = azurerm_api_management_group.this.api_management_name
}

output "display_name" {
  value = azurerm_api_management_group.this.display_name
}

output "description" {
  value = azurerm_api_management_group.this.description
}

output "external_id" {
  value = azurerm_api_management_group.this.external_id
}

output "type" {
  value = azurerm_api_management_group.this.type
}

output "id" {
  description = "The ID of the API Management Group."
  value       = azurerm_api_management_group.this.id
}

