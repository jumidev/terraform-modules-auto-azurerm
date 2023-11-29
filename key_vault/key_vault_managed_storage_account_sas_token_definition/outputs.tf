output "name" {
  value = azurerm_key_vault_managed_storage_account_sas_token_definition.this.name
}

output "managed_storage_account_id" {
  value = azurerm_key_vault_managed_storage_account_sas_token_definition.this.managed_storage_account_id
}

output "sas_template_uri" {
  value = azurerm_key_vault_managed_storage_account_sas_token_definition.this.sas_template_uri
}

output "sas_type" {
  value = azurerm_key_vault_managed_storage_account_sas_token_definition.this.sas_type
}

output "validity_period" {
  value = azurerm_key_vault_managed_storage_account_sas_token_definition.this.validity_period
}

output "tags" {
  value = azurerm_key_vault_managed_storage_account_sas_token_definition.this.tags
}

output "id" {
  description = "The ID of the Managed Storage Account SAS Definition."
  value       = azurerm_key_vault_managed_storage_account_sas_token_definition.this.id
}

output "secret_id" {
  description = "The ID of the Secret that is created by Managed Storage Account SAS Definition."
  value       = azurerm_key_vault_managed_storage_account_sas_token_definition.this.secret_id
}

