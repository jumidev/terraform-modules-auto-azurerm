output "api_management_id" {
  value = azurerm_api_management_custom_domain.this.api_management_id
}

output "developer_portal" {
  value = azurerm_api_management_custom_domain.this.developer_portal
}

output "management" {
  value = azurerm_api_management_custom_domain.this.management
}

output "portal" {
  value = azurerm_api_management_custom_domain.this.portal
}

output "gateway" {
  value = azurerm_api_management_custom_domain.this.gateway
}

output "scm" {
  value = azurerm_api_management_custom_domain.this.scm
}

output "id" {
  description = "The ID of the API Management Custom Domain."
  value       = azurerm_api_management_custom_domain.this.id
}

