output "name" {
  value = azurerm_vpn_server_configuration_policy_group.this.name
}

output "vpn_server_configuration_id" {
  value = azurerm_vpn_server_configuration_policy_group.this.vpn_server_configuration_id
}

output "policy" {
  value = azurerm_vpn_server_configuration_policy_group.this.policy
}

output "is_default" {
  value = azurerm_vpn_server_configuration_policy_group.this.is_default
}

output "priority" {
  value = azurerm_vpn_server_configuration_policy_group.this.priority
}

output "id" {
  description = "The ID of the VPN Server Configuration Policy Group."
  value       = azurerm_vpn_server_configuration_policy_group.this.id
}

