output "name" {
  value = azurerm_data_factory.this.name
}

output "resource_group_name" {
  value = azurerm_data_factory.this.resource_group_name
}

output "location" {
  value = azurerm_data_factory.this.location
}

output "github_configuration" {
  value = azurerm_data_factory.this.github_configuration
}

output "global_parameter" {
  value = azurerm_data_factory.this.global_parameter
}

output "identity" {
  value = azurerm_data_factory.this.identity
}

output "vsts_configuration" {
  value = azurerm_data_factory.this.vsts_configuration
}

output "managed_virtual_network_enabled" {
  value = azurerm_data_factory.this.managed_virtual_network_enabled
}

output "public_network_enabled" {
  value = azurerm_data_factory.this.public_network_enabled
}

output "customer_managed_key_id" {
  value = azurerm_data_factory.this.customer_managed_key_id
}

output "customer_managed_key_identity_id" {
  value = azurerm_data_factory.this.customer_managed_key_identity_id
}

output "purview_id" {
  value = azurerm_data_factory.this.purview_id
}

output "tags" {
  value = azurerm_data_factory.this.tags
}

output "id" {
  description = "The ID of the Data Factory."
  value       = azurerm_data_factory.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_data_factory.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_data_factory.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_data_factory.this.tenant_id
}

