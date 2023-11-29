output "country_code" {
  value = azurerm_aadb2c_directory.this.country_code
}

output "data_residency_location" {
  value = azurerm_aadb2c_directory.this.data_residency_location
}

output "display_name" {
  value = azurerm_aadb2c_directory.this.display_name
}

output "domain_name" {
  value = azurerm_aadb2c_directory.this.domain_name
}

output "resource_group_name" {
  value = azurerm_aadb2c_directory.this.resource_group_name
}

output "sku_name" {
  value = azurerm_aadb2c_directory.this.sku_name
}

output "tags" {
  value = azurerm_aadb2c_directory.this.tags
}

output "id" {
  description = "The ID of the AAD B2C Directory."
  value       = azurerm_aadb2c_directory.this.id
}

output "billing_type" {
  description = "The type of billing for the AAD B2C tenant. Possible values include: 'MAU' or 'Auths'."
  value       = azurerm_aadb2c_directory.this.billing_type
}

output "effective_start_date" {
  description = "The date from which the billing type took effect. May not be populated until after the first billing cycle."
  value       = azurerm_aadb2c_directory.this.effective_start_date
}

output "tenant_id" {
  description = "The Tenant ID for the AAD B2C tenant."
  value       = azurerm_aadb2c_directory.this.tenant_id
}

