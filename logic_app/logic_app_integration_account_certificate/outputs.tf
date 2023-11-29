output "name" {
  value = azurerm_logic_app_integration_account_certificate.this.name
}

output "resource_group_name" {
  value = azurerm_logic_app_integration_account_certificate.this.resource_group_name
}

output "integration_account_name" {
  value = azurerm_logic_app_integration_account_certificate.this.integration_account_name
}

output "key_vault_key" {
  value = azurerm_logic_app_integration_account_certificate.this.key_vault_key
}

output "metadata" {
  value = azurerm_logic_app_integration_account_certificate.this.metadata
}

output "public_certificate" {
  value = azurerm_logic_app_integration_account_certificate.this.public_certificate
}

output "id" {
  description = "The ID of the Logic App Integration Account Certificate."
  value       = azurerm_logic_app_integration_account_certificate.this.id
}

