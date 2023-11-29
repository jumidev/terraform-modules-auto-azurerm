output "name" {
  value = azurerm_logic_app_integration_account_agreement.this.name
}

output "resource_group_name" {
  value = azurerm_logic_app_integration_account_agreement.this.resource_group_name
}

output "integration_account_name" {
  value = azurerm_logic_app_integration_account_agreement.this.integration_account_name
}

output "agreement_type" {
  value = azurerm_logic_app_integration_account_agreement.this.agreement_type
}

output "content" {
  value = azurerm_logic_app_integration_account_agreement.this.content
}

output "guest_identity" {
  value = azurerm_logic_app_integration_account_agreement.this.guest_identity
}

output "guest_partner_name" {
  value = azurerm_logic_app_integration_account_agreement.this.guest_partner_name
}

output "host_identity" {
  value = azurerm_logic_app_integration_account_agreement.this.host_identity
}

output "host_partner_name" {
  value = azurerm_logic_app_integration_account_agreement.this.host_partner_name
}

output "metadata" {
  value = azurerm_logic_app_integration_account_agreement.this.metadata
}

output "id" {
  description = "The ID of the Logic App Integration Account Agreement."
  value       = azurerm_logic_app_integration_account_agreement.this.id
}

