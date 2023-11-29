output "name" {
  value = azurerm_network_manager_security_admin_configuration.this.name
}

output "network_manager_id" {
  value = azurerm_network_manager_security_admin_configuration.this.network_manager_id
}

output "apply_on_network_intent_policy_based_services" {
  value = azurerm_network_manager_security_admin_configuration.this.apply_on_network_intent_policy_based_services
}

output "description" {
  value = azurerm_network_manager_security_admin_configuration.this.description
}

output "id" {
  description = "The ID of the Network Manager Security Admin Configuration."
  value       = azurerm_network_manager_security_admin_configuration.this.id
}

