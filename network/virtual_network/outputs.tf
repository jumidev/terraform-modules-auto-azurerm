output "name" {
  value = azurerm_virtual_network.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_network.this.resource_group_name
}

output "address_space" {
  value = azurerm_virtual_network.this.address_space
}

output "location" {
  value = azurerm_virtual_network.this.location
}

output "bgp_community" {
  value = azurerm_virtual_network.this.bgp_community
}

output "ddos_protection_plan" {
  value = azurerm_virtual_network.this.ddos_protection_plan
}

output "encryption" {
  value = azurerm_virtual_network.this.encryption
}

output "dns_servers" {
  value = azurerm_virtual_network.this.dns_servers
}

output "edge_zone" {
  value = azurerm_virtual_network.this.edge_zone
}

output "flow_timeout_in_minutes" {
  value = azurerm_virtual_network.this.flow_timeout_in_minutes
}

output "security_group" {
  description = "The Network Security Group to associate with the subnet. (Referenced by 'id', ie. 'azurerm_network_security_group.example.id') In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_virtual_network.this.security_group
}

output "id" {
  description = "The ID of this subnet."
  value       = azurerm_virtual_network.this.id
}

output "guid" {
  description = "The GUID of the virtual network."
  value       = azurerm_virtual_network.this.guid
}

output "subnet" {
  description = "One or more 'subnet' blocks."
  value       = azurerm_virtual_network.this.subnet
}

output "private_dns_zone_virtual_network_link" {
  value = var.private_dns_zone_virtual_network_link
}

