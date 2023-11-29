output "name" {
  value = azurerm_site_recovery_fabric.this.name
}

output "resource_group_name" {
  value = azurerm_site_recovery_fabric.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_site_recovery_fabric.this.recovery_vault_name
}

output "location" {
  value = azurerm_site_recovery_fabric.this.location
}

output "id" {
  description = "The ID of the Site Recovery Fabric."
  value       = azurerm_site_recovery_fabric.this.id
}

