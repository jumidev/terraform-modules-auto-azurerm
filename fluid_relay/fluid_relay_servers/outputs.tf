output "location" {
  value = azurerm_fluid_relay_servers.this.location
}

output "name" {
  value = azurerm_fluid_relay_servers.this.name
}

output "resource_group_name" {
  value = azurerm_fluid_relay_servers.this.resource_group_name
}

output "tags" {
  value = azurerm_fluid_relay_servers.this.tags
}

output "identity" {
  value = azurerm_fluid_relay_servers.this.identity
}

output "storage_sku" {
  value = azurerm_fluid_relay_servers.this.storage_sku
}

output "id" {
  description = "The ID of the Fluid Relay Server."
  value       = azurerm_fluid_relay_servers.this.id
}

output "frs_tenant_id" {
  description = "The Fluid tenantId for this server."
  value       = azurerm_fluid_relay_servers.this.frs_tenant_id
}

output "primary_key" {
  description = "The primary key for this server."
  value       = azurerm_fluid_relay_servers.this.primary_key
}

output "secondary_key" {
  description = "The secondary key for this server."
  value       = azurerm_fluid_relay_servers.this.secondary_key
}

output "orderer_endpoints" {
  description = "An array of the Fluid Relay Orderer endpoints. This will be deprecated in future version of fluid relay server and will always be empty, [more details](https://learn.microsoft.com/en-us/azure/azure-fluid-relay/concepts/version-compatibility)."
  value       = azurerm_fluid_relay_servers.this.orderer_endpoints
}

output "storage_endpoints" {
  description = "An array of storage endpoints for this Fluid Relay Server. This will be deprecated in future version of fluid relay server and will always be empty, [more details](https://learn.microsoft.com/en-us/azure/azure-fluid-relay/concepts/version-compatibility)."
  value       = azurerm_fluid_relay_servers.this.storage_endpoints
}

output "service_endpoints" {
  description = "An array of service endpoints for this Fluid Relay Server."
  value       = azurerm_fluid_relay_servers.this.service_endpoints
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this Fluid Relay Server."
  value       = azurerm_fluid_relay_servers.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this Fluid Relay Server."
  value       = azurerm_fluid_relay_servers.this.tenant_id
}

