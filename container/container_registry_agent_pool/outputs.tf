output "container_registry_name" {
  value = azurerm_container_registry_agent_pool.this.container_registry_name
}

output "location" {
  value = azurerm_container_registry_agent_pool.this.location
}

output "name" {
  value = azurerm_container_registry_agent_pool.this.name
}

output "resource_group_name" {
  value = azurerm_container_registry_agent_pool.this.resource_group_name
}

output "instance_count" {
  value = azurerm_container_registry_agent_pool.this.instance_count
}

output "tier" {
  value = azurerm_container_registry_agent_pool.this.tier
}

output "virtual_network_subnet_id" {
  value = azurerm_container_registry_agent_pool.this.virtual_network_subnet_id
}

output "tags" {
  value = azurerm_container_registry_agent_pool.this.tags
}

output "tags" {
  description = "A mapping of tags which should be assigned to the Azure Container Registry Agent Pool. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_container_registry_agent_pool.this.tags
}

output "id" {
  description = "The ID of the Azure Container Registry Agent Pool."
  value       = azurerm_container_registry_agent_pool.this.id
}

