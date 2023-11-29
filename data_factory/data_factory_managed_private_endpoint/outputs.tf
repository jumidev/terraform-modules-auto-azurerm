output "name" {
  value = azurerm_data_factory_managed_private_endpoint.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_managed_private_endpoint.this.data_factory_id
}

output "target_resource_id" {
  value = azurerm_data_factory_managed_private_endpoint.this.target_resource_id
}

output "subresource_name" {
  value = azurerm_data_factory_managed_private_endpoint.this.subresource_name
}

output "fqdns" {
  value = azurerm_data_factory_managed_private_endpoint.this.fqdns
}

output "id" {
  description = "The ID of the Data Factory Managed Private Endpoint."
  value       = azurerm_data_factory_managed_private_endpoint.this.id
}

