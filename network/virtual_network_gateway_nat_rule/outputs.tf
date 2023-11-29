output "name" {
  value = azurerm_virtual_network_gateway_nat_rule.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_network_gateway_nat_rule.this.resource_group_name
}

output "virtual_network_gateway_id" {
  value = azurerm_virtual_network_gateway_nat_rule.this.virtual_network_gateway_id
}

output "external_mapping" {
  value = azurerm_virtual_network_gateway_nat_rule.this.external_mapping
}

output "internal_mapping" {
  value = azurerm_virtual_network_gateway_nat_rule.this.internal_mapping
}

output "ip_configuration_id" {
  value = azurerm_virtual_network_gateway_nat_rule.this.ip_configuration_id
}

output "mode" {
  value = azurerm_virtual_network_gateway_nat_rule.this.mode
}

output "type" {
  value = azurerm_virtual_network_gateway_nat_rule.this.type
}

output "id" {
  description = "The ID of the Virtual Network Gateway Nat Rule."
  value       = azurerm_virtual_network_gateway_nat_rule.this.id
}

