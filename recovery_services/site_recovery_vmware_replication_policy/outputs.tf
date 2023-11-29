output "name" {
  value = azurerm_site_recovery_vmware_replication_policy.this.name
}

output "recovery_vault_id" {
  value = azurerm_site_recovery_vmware_replication_policy.this.recovery_vault_id
}

output "recovery_point_retention_in_minutes" {
  value = azurerm_site_recovery_vmware_replication_policy.this.recovery_point_retention_in_minutes
}

output "application_consistent_snapshot_frequency_in_minutes" {
  value = azurerm_site_recovery_vmware_replication_policy.this.application_consistent_snapshot_frequency_in_minutes
}

output "id" {
  description = "The ID of the Classic Replication Policy."
  value       = azurerm_site_recovery_vmware_replication_policy.this.id
}

