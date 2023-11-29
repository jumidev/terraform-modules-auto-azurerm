output "name" {
  value = azurerm_site_recovery_protection_container.this.name
}

output "resource_group_name" {
  value = azurerm_site_recovery_protection_container.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_site_recovery_protection_container.this.recovery_vault_name
}

output "recovery_fabric_name" {
  value = azurerm_site_recovery_protection_container.this.recovery_fabric_name
}

output "id" {
  description = "The ID of the Site Recovery Protection Container."
  value       = azurerm_site_recovery_protection_container.this.id
}

