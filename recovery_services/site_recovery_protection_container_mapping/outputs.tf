output "name" {
  value = azurerm_site_recovery_protection_container_mapping.this.name
}

output "resource_group_name" {
  value = azurerm_site_recovery_protection_container_mapping.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_site_recovery_protection_container_mapping.this.recovery_vault_name
}

output "recovery_fabric_name" {
  value = azurerm_site_recovery_protection_container_mapping.this.recovery_fabric_name
}

output "recovery_source_protection_container_name" {
  value = azurerm_site_recovery_protection_container_mapping.this.recovery_source_protection_container_name
}

output "recovery_target_protection_container_id" {
  value = azurerm_site_recovery_protection_container_mapping.this.recovery_target_protection_container_id
}

output "recovery_replication_policy_id" {
  value = azurerm_site_recovery_protection_container_mapping.this.recovery_replication_policy_id
}

output "automatic_update" {
  value = azurerm_site_recovery_protection_container_mapping.this.automatic_update
}

output "id" {
  description = "The ID of the Site Recovery Protection Container Mapping."
  value       = azurerm_site_recovery_protection_container_mapping.this.id
}

