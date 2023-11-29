output "name" {
  value = azurerm_data_protection_resource_guard.this.name
}

output "resource_group_name" {
  value = azurerm_data_protection_resource_guard.this.resource_group_name
}

output "location" {
  value = azurerm_data_protection_resource_guard.this.location
}

output "vault_critical_operation_exclusion_list" {
  value = azurerm_data_protection_resource_guard.this.vault_critical_operation_exclusion_list
}

output "tags" {
  value = azurerm_data_protection_resource_guard.this.tags
}

output "id" {
  description = "The ID of the Resource Guard."
  value       = azurerm_data_protection_resource_guard.this.id
}

