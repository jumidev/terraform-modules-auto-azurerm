output "name" {
  value = azurerm_site_recovery_services_vault_hyperv_site.this.name
}

output "recovery_vault_id" {
  value = azurerm_site_recovery_services_vault_hyperv_site.this.recovery_vault_id
}

output "id" {
  description = "The ID of the Recovery Service."
  value       = azurerm_site_recovery_services_vault_hyperv_site.this.id
}

