output "name" {
  value = azurerm_data_share_account.this.name
}

output "resource_group_name" {
  value = azurerm_data_share_account.this.resource_group_name
}

output "location" {
  value = azurerm_data_share_account.this.location
}

output "identity" {
  value = azurerm_data_share_account.this.identity
}

output "tags" {
  value = azurerm_data_share_account.this.tags
}

output "id" {
  description = "The ID of the Data Share Account."
  value       = azurerm_data_share_account.this.id
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this Data Share Account."
  value       = azurerm_data_share_account.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this Data Share Account."
  value       = azurerm_data_share_account.this.tenant_id
}

