output "name" {
  value = azurerm_site_recovery_replication_policy.this.name
}

output "resource_group_name" {
  value = azurerm_site_recovery_replication_policy.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_site_recovery_replication_policy.this.recovery_vault_name
}

output "recovery_point_retention_in_minutes" {
  value = azurerm_site_recovery_replication_policy.this.recovery_point_retention_in_minutes
}

output "application_consistent_snapshot_frequency_in_minutes" {
  value = azurerm_site_recovery_replication_policy.this.application_consistent_snapshot_frequency_in_minutes
}

output "id" {
  description = "The ID of the Site Recovery Replication Policy."
  value       = azurerm_site_recovery_replication_policy.this.id
}

