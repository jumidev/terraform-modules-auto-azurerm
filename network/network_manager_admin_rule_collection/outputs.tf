output "name" {
  value = azurerm_network_manager_admin_rule_collection.this.name
}

output "security_admin_configuration_id" {
  value = azurerm_network_manager_admin_rule_collection.this.security_admin_configuration_id
}

output "network_group_ids" {
  value = azurerm_network_manager_admin_rule_collection.this.network_group_ids
}

output "description" {
  value = azurerm_network_manager_admin_rule_collection.this.description
}

output "id" {
  description = "The ID of the Network Manager Admin Rule Collection."
  value       = azurerm_network_manager_admin_rule_collection.this.id
}

