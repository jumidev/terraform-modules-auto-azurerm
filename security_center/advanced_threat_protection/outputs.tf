output "target_resource_id" {
  value = azurerm_advanced_threat_protection.this.target_resource_id
}

output "enabled" {
  value = azurerm_advanced_threat_protection.this.enabled
}

output "id" {
  description = "The ID of the Advanced Threat Protection resource."
  value       = azurerm_advanced_threat_protection.this.id
}

