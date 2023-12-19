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

output "id" {
  description = "The ID of this subnet."
  value       = azurerm_virtual_network.this.id
}

output "name" {
  description = "The name of the virtual network. Changing this forces a new resource to be created."
  value       = azurerm_virtual_network.this.name
}

output "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  value       = azurerm_virtual_network.this.resource_group_name
}

output "location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  value       = azurerm_virtual_network.this.location
}

output "address_space" {
  description = "The list of address spaces used by the virtual network."
  value       = azurerm_virtual_network.this.address_space
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

