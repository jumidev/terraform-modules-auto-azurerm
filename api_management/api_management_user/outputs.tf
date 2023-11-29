output "api_management_name" {
  value = azurerm_api_management_user.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_user.this.resource_group_name
}

output "email" {
  value = azurerm_api_management_user.this.email
}

output "first_name" {
  value = azurerm_api_management_user.this.first_name
}

output "last_name" {
  value = azurerm_api_management_user.this.last_name
}

output "user_id" {
  value = azurerm_api_management_user.this.user_id
}

output "confirmation" {
  value = azurerm_api_management_user.this.confirmation
}

output "note" {
  value = azurerm_api_management_user.this.note
}

output "password" {
  value     = azurerm_api_management_user.this.password
  sensitive = true
}

output "state" {
  value = azurerm_api_management_user.this.state
}

output "id" {
  description = "The ID of the API Management User."
  value       = azurerm_api_management_user.this.id
}

