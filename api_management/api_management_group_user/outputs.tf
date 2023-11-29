output "user_id" {
  value = azurerm_api_management_group_user.this.user_id
}

output "group_name" {
  value = azurerm_api_management_group_user.this.group_name
}

output "api_management_name" {
  value = azurerm_api_management_group_user.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_group_user.this.resource_group_name
}

output "id" {
  description = "The ID of the API Management Group User."
  value       = azurerm_api_management_group_user.this.id
}

