output "network_manager_id" {
  value = azurerm_network_manager_deployment.this.network_manager_id
}

output "location" {
  value = azurerm_network_manager_deployment.this.location
}

output "scope_access" {
  value = azurerm_network_manager_deployment.this.scope_access
}

output "configuration_ids" {
  value = azurerm_network_manager_deployment.this.configuration_ids
}

output "triggers" {
  value = azurerm_network_manager_deployment.this.triggers
}

output "id" {
  description = "The ID of the Network Manager Admin Rule Collection."
  value       = azurerm_network_manager_deployment.this.id
}

