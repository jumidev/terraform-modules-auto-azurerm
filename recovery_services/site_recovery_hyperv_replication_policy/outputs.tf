output "name" {
  value = azurerm_site_recovery_hyperv_replication_policy.this.name
}

output "recovery_vault_id" {
  value = azurerm_site_recovery_hyperv_replication_policy.this.recovery_vault_id
}

output "recovery_point_retention_in_hours" {
  value = azurerm_site_recovery_hyperv_replication_policy.this.recovery_point_retention_in_hours
}

output "application_consistent_snapshot_frequency_in_hours" {
  value = azurerm_site_recovery_hyperv_replication_policy.this.application_consistent_snapshot_frequency_in_hours
}

output "replication_interval_in_seconds" {
  value = azurerm_site_recovery_hyperv_replication_policy.this.replication_interval_in_seconds
}

output "id" {
  description = "The ID of the Site Recovery Replication Policy."
  value       = azurerm_site_recovery_hyperv_replication_policy.this.id
}

