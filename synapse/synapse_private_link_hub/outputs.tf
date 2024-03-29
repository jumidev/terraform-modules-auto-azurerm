output "name" {
  value = azurerm_synapse_private_link_hub.this.name
}

output "resource_group_name" {
  value = azurerm_synapse_private_link_hub.this.resource_group_name
}

output "location" {
  value = azurerm_synapse_private_link_hub.this.location
}

output "tags" {
  value = azurerm_synapse_private_link_hub.this.tags
}

output "tags" {
  description = "A mapping of tags which should be assigned to the Synapse Private Link Hub. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_synapse_private_link_hub.this.tags
}

output "id" {
  description = "The ID of the Synapse Private Link Hub."
  value       = azurerm_synapse_private_link_hub.this.id
}

