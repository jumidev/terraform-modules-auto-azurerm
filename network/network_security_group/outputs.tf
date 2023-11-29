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

