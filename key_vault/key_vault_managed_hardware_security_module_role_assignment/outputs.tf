output "name" {
  value = azurerm_key_vault_managed_hardware_security_module_role_assignment.this.name
}

output "principal_id" {
  value = azurerm_key_vault_managed_hardware_security_module_role_assignment.this.principal_id
}

output "role_definition_id" {
  value = azurerm_key_vault_managed_hardware_security_module_role_assignment.this.role_definition_id
}

output "scope" {
  value = azurerm_key_vault_managed_hardware_security_module_role_assignment.this.scope
}

output "vault_base_url" {
  value = azurerm_key_vault_managed_hardware_security_module_role_assignment.this.vault_base_url
}

output "id" {
  description = "The ID of the KeyVault Role Assignment with Vault Base URL."
  value       = azurerm_key_vault_managed_hardware_security_module_role_assignment.this.id
}

output "resource_id" {
  description = "The resource id of created assignment resource."
  value       = azurerm_key_vault_managed_hardware_security_module_role_assignment.this.resource_id
}

