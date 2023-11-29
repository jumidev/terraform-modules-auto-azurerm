output "name" {
  value = azurerm_relay_namespace.this.name
}

output "resource_group_name" {
  value = azurerm_relay_namespace.this.resource_group_name
}

output "location" {
  value = azurerm_relay_namespace.this.location
}

output "sku_name" {
  value = azurerm_relay_namespace.this.sku_name
}

output "tags" {
  value = azurerm_relay_namespace.this.tags
}

output "id" {
  description = "The Azure Relay Namespace ID."
  value       = azurerm_relay_namespace.this.id
}

output "primary_connection_string" {
  description = "The primary connection string for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_relay_namespace.this.primary_connection_string
}

output "secondary_connection_string" {
  description = "The secondary connection string for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_relay_namespace.this.secondary_connection_string
}

output "primary_key" {
  description = "The primary access key for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_relay_namespace.this.primary_key
}

output "secondary_key" {
  description = "The secondary access key for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_relay_namespace.this.secondary_key
}

output "metric_id" {
  description = "The Identifier for Azure Insights metrics."
  value       = azurerm_relay_namespace.this.metric_id
}

