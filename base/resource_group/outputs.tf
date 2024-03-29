output "location" {
  value = azurerm_resource_group.this.location
}

output "name" {
  value = azurerm_resource_group.this.name
}

output "managed_by" {
  value = azurerm_resource_group.this.managed_by
}

output "tags" {
  value = azurerm_resource_group.this.tags
}

output "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_resource_group.this.tags
}

output "id" {
  description = "The ID of the Resource Group."
  value       = azurerm_resource_group.this.id
}

output "private_dns_zone_virtual_network_link" {
  value = var.private_dns_zone_virtual_network_link
}

