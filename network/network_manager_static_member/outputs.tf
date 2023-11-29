output "name" {
  value = azurerm_network_manager_static_member.this.name
}

output "network_group_id" {
  value = azurerm_network_manager_static_member.this.network_group_id
}

output "target_virtual_network_id" {
  value = azurerm_network_manager_static_member.this.target_virtual_network_id
}

output "id" {
  description = "The ID of the Network Manager Static Member."
  value       = azurerm_network_manager_static_member.this.id
}

output "region" {
  description = "The region of the Network Manager Static Member."
  value       = azurerm_network_manager_static_member.this.region
}

