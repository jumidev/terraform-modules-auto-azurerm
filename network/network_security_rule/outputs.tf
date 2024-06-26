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

output "direction" {
  description = "The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are 'Inbound' and 'Outbound'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_network_security_rule.this.direction
}

output "id" {
  description = "The ID of the Network Security Rule."
  value       = azurerm_network_security_rule.this.id
}

