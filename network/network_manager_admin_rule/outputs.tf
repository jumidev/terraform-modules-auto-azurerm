output "name" {
  value = azurerm_network_manager_admin_rule.this.name
}

output "admin_rule_collection_id" {
  value = azurerm_network_manager_admin_rule.this.admin_rule_collection_id
}

output "action" {
  value = azurerm_network_manager_admin_rule.this.action
}

output "direction" {
  value = azurerm_network_manager_admin_rule.this.direction
}

output "priority" {
  value = azurerm_network_manager_admin_rule.this.priority
}

output "protocol" {
  value = azurerm_network_manager_admin_rule.this.protocol
}

output "description" {
  value = azurerm_network_manager_admin_rule.this.description
}

output "destination_port_ranges" {
  value = azurerm_network_manager_admin_rule.this.destination_port_ranges
}

output "destination" {
  value = azurerm_network_manager_admin_rule.this.destination
}

output "source_port_ranges" {
  value = azurerm_network_manager_admin_rule.this.source_port_ranges
}

output "source" {
  value = azurerm_network_manager_admin_rule.this.source
}

output "id" {
  description = "The ID of the Network Manager Admin Rule."
  value       = azurerm_network_manager_admin_rule.this.id
}

