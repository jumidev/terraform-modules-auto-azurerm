output "name" {
  value = azurerm_site_recovery_replication_recovery_plan.this.name
}

output "recovery_vault_id" {
  value = azurerm_site_recovery_replication_recovery_plan.this.recovery_vault_id
}

output "source_recovery_fabric_id" {
  value = azurerm_site_recovery_replication_recovery_plan.this.source_recovery_fabric_id
}

output "target_recovery_fabric_id" {
  value = azurerm_site_recovery_replication_recovery_plan.this.target_recovery_fabric_id
}

output "recovery_group" {
  value = azurerm_site_recovery_replication_recovery_plan.this.recovery_group
}

output "shutdown_recovery_group" {
  value = azurerm_site_recovery_replication_recovery_plan.this.shutdown_recovery_group
}

output "failover_recovery_group" {
  value = azurerm_site_recovery_replication_recovery_plan.this.failover_recovery_group
}

output "boot_recovery_group" {
  value = azurerm_site_recovery_replication_recovery_plan.this.boot_recovery_group
}

output "azure_to_azure_settings" {
  value = azurerm_site_recovery_replication_recovery_plan.this.azure_to_azure_settings
}

output "id" {
  description = "The ID of the Site Recovery Fabric."
  value       = azurerm_site_recovery_replication_recovery_plan.this.id
}

