output "name" {
  value = azurerm_integration_service_environment.this.name
}

output "resource_group_name" {
  value = azurerm_integration_service_environment.this.resource_group_name
}

output "location" {
  value = azurerm_integration_service_environment.this.location
}

output "sku_name" {
  value = azurerm_integration_service_environment.this.sku_name
}

output "access_endpoint_type" {
  value = azurerm_integration_service_environment.this.access_endpoint_type
}

output "virtual_network_subnet_ids" {
  value = azurerm_integration_service_environment.this.virtual_network_subnet_ids
}

output "tags" {
  value = azurerm_integration_service_environment.this.tags
}

output "id" {
  description = "The ID of the Integration Service Environment."
  value       = azurerm_integration_service_environment.this.id
}

output "connector_endpoint_ip_addresses" {
  description = "The list of access endpoint IP addresses of connector."
  value       = azurerm_integration_service_environment.this.connector_endpoint_ip_addresses
}

output "connector_outbound_ip_addresses" {
  description = "The list of outgoing IP addresses of connector."
  value       = azurerm_integration_service_environment.this.connector_outbound_ip_addresses
}

output "workflow_endpoint_ip_addresses" {
  description = "The list of access endpoint IP addresses of workflow."
  value       = azurerm_integration_service_environment.this.workflow_endpoint_ip_addresses
}

output "workflow_outbound_ip_addresses" {
  description = "The list of outgoing IP addresses of workflow."
  value       = azurerm_integration_service_environment.this.workflow_outbound_ip_addresses
}

