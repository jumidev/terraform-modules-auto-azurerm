output "name" {
  value = azurerm_logic_app_integration_account_partner.this.name
}

output "resource_group_name" {
  value = azurerm_logic_app_integration_account_partner.this.resource_group_name
}

output "integration_account_name" {
  value = azurerm_logic_app_integration_account_partner.this.integration_account_name
}

output "business_identity" {
  value = azurerm_logic_app_integration_account_partner.this.business_identity
}

output "metadata" {
  value = azurerm_logic_app_integration_account_partner.this.metadata
}

output "id" {
  description = "The ID of the Logic App Integration Account Partner."
  value       = azurerm_logic_app_integration_account_partner.this.id
}

