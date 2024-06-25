output "storage_container_resource_manager_id" {
  value = azurerm_storage_container_immutability_policy.this.storage_container_resource_manager_id
}

output "immutability_period_in_days" {
  value = azurerm_storage_container_immutability_policy.this.immutability_period_in_days
}

output "locked" {
  value = azurerm_storage_container_immutability_policy.this.locked
}

output "protected_append_writes_all_enabled" {
  value = azurerm_storage_container_immutability_policy.this.protected_append_writes_all_enabled
}

output "protected_append_writes_enabled" {
  value = azurerm_storage_container_immutability_policy.this.protected_append_writes_enabled
}

