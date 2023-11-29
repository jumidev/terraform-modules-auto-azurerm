output "name" {
  value = azurerm_network_security_rule.this.name
}

output "resource_group_name" {
  value = azurerm_network_security_rule.this.resource_group_name
}

output "network_security_group_name" {
  value = azurerm_network_security_rule.this.network_security_group_name
}

output "description" {
  value = azurerm_network_security_rule.this.description
}

output "protocol" {
  value = azurerm_network_security_rule.this.protocol
}

output "source_port_range" {
  value = azurerm_network_security_rule.this.source_port_range
}

output "source_port_ranges" {
  value = azurerm_network_security_rule.this.source_port_ranges
}

output "destination_port_range" {
  value = azurerm_network_security_rule.this.destination_port_range
}

output "destination_port_ranges" {
  value = azurerm_network_security_rule.this.destination_port_ranges
}

output "source_address_prefix" {
  value = azurerm_network_security_rule.this.source_address_prefix
}

output "source_address_prefixes" {
  value = azurerm_network_security_rule.this.source_address_prefixes
}

output "source_application_security_group_ids" {
  value = azurerm_network_security_rule.this.source_application_security_group_ids
}

output "destination_address_prefix" {
  value = azurerm_network_security_rule.this.destination_address_prefix
}

output "destination_address_prefixes" {
  value = azurerm_network_security_rule.this.destination_address_prefixes
}

output "destination_application_security_group_ids" {
  value = azurerm_network_security_rule.this.destination_application_security_group_ids
}

output "access" {
  value = azurerm_network_security_rule.this.access
}

output "priority" {
  value = azurerm_network_security_rule.this.priority
}

output "direction" {
  value = azurerm_network_security_rule.this.direction
}

output "id" {
  description = "The ID of the Network Security Rule."
  value       = azurerm_network_security_rule.this.id
}

