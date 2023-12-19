output "name" {
  value = azurerm_key_vault_managed_hardware_security_module_role_definition.this.name
}

output "vault_base_url" {
  value = azurerm_key_vault_managed_hardware_security_module_role_definition.this.vault_base_url
}

output "description" {
  value = azurerm_key_vault_managed_hardware_security_module_role_definition.this.description
}

output "permission" {
  value = azurerm_key_vault_managed_hardware_security_module_role_definition.this.permission
}

output "role_name" {
  value = azurerm_key_vault_managed_hardware_security_module_role_definition.this.role_name
}

output "id" {
  description = "The ID of the KeyVault Role Definition."
  value       = azurerm_key_vault_managed_hardware_security_module_role_definition.this.id
}

output "resource_id" {
  description = "The ID of the role definition resource without Key Vault base URL."
  value       = azurerm_key_vault_managed_hardware_security_module_role_definition.this.resource_id
}

output "role_type" {
  description = "The type of the role definition. Possible values are 'AKVBuiltInRole' and 'CustomRole'."
  value       = azurerm_key_vault_managed_hardware_security_module_role_definition.this.role_type
}

