output "managed_instance_id" {
  value = azurerm_mssql_managed_instance_transparent_data_encryption.this.managed_instance_id
}

output "key_vault_key_id" {
  value = azurerm_mssql_managed_instance_transparent_data_encryption.this.key_vault_key_id
}

output "auto_rotation_enabled" {
  value = azurerm_mssql_managed_instance_transparent_data_encryption.this.auto_rotation_enabled
}

output "id" {
  description = "The ID of the MSSQL encryption protector"
  value       = azurerm_mssql_managed_instance_transparent_data_encryption.this.id
}

