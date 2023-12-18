output "name" {
  value = azurerm_network_security_group.this.name
}

output "resource_group_name" {
  value = azurerm_network_security_group.this.resource_group_name
}

output "location" {
  value = azurerm_network_security_group.this.location
}

output "security_rule" {
  value = azurerm_network_security_group.this.security_rule
}

output "tags" {
  value = azurerm_network_security_group.this.tags
}

output "id" {
  description = "The ID of the Network Security Group."
  value       = azurerm_network_security_group.this.id
}

output "network_security_group_id" {
  value = azurerm_subnet_network_security_group_association.this.*.network_security_group_id
}

output "subnet_id" {
  value = azurerm_subnet_network_security_group_association.this.*.subnet_id
}

output "id" {
  description = "The ID of the Subnet."
  value       = azurerm_subnet_network_security_group_association.this.*.id
}

