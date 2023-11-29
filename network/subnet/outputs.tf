output "name" {
  value = azurerm_subnet.this.name
}

output "resource_group_name" {
  value = azurerm_subnet.this.resource_group_name
}

output "virtual_network_name" {
  value = azurerm_subnet.this.virtual_network_name
}

output "address_prefixes" {
  value = azurerm_subnet.this.address_prefixes
}

output "delegation" {
  value = azurerm_subnet.this.delegation
}

output "private_endpoint_network_policies_enabled" {
  value = azurerm_subnet.this.private_endpoint_network_policies_enabled
}

output "private_link_service_network_policies_enabled" {
  value = azurerm_subnet.this.private_link_service_network_policies_enabled
}

output "service_endpoints" {
  value = azurerm_subnet.this.service_endpoints
}

output "service_endpoint_policy_ids" {
  value = azurerm_subnet.this.service_endpoint_policy_ids
}

output "id" {
  description = "The subnet ID."
  value       = azurerm_subnet.this.id
}

output "name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
  value       = azurerm_subnet.this.name
}

output "resource_group_name" {
  description = "The name of the resource group in which the subnet is created in."
  value       = azurerm_subnet.this.resource_group_name
}

output "virtual_network_name" {
  description = "The name of the virtual network in which the subnet is created in. Changing this forces a new resource to be created."
  value       = azurerm_subnet.this.virtual_network_name
}

output "address_prefixes" {
  description = "The address prefixes for the subnet"
  value       = azurerm_subnet.this.address_prefixes
}

