output "name" {
  value = azurerm_servicebus_namespace.this.name
}

output "resource_group_name" {
  value = azurerm_servicebus_namespace.this.resource_group_name
}

output "location" {
  value = azurerm_servicebus_namespace.this.location
}

output "sku" {
  value = azurerm_servicebus_namespace.this.sku
}

output "identity" {
  value = azurerm_servicebus_namespace.this.identity
}

output "capacity" {
  value = azurerm_servicebus_namespace.this.capacity
}

output "customer_managed_key" {
  value = azurerm_servicebus_namespace.this.customer_managed_key
}

output "local_auth_enabled" {
  value = azurerm_servicebus_namespace.this.local_auth_enabled
}

output "public_network_access_enabled" {
  value = azurerm_servicebus_namespace.this.public_network_access_enabled
}

output "minimum_tls_version" {
  value = azurerm_servicebus_namespace.this.minimum_tls_version
}

output "zone_redundant" {
  value = azurerm_servicebus_namespace.this.zone_redundant
}

output "network_rule_set" {
  value = azurerm_servicebus_namespace.this.network_rule_set
}

output "tags" {
  value = azurerm_servicebus_namespace.this.tags
}

output "id" {
  description = "The ServiceBus Namespace ID."
  value       = azurerm_servicebus_namespace.this.id
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this ServiceBus Namespace."
  value       = azurerm_servicebus_namespace.this.identity
}

output "endpoint" {
  description = "The URL to access the ServiceBus Namespace."
  value       = azurerm_servicebus_namespace.this.endpoint
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this ServiceBus Namespace."
  value       = azurerm_servicebus_namespace.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this ServiceBus Namespace."
  value       = azurerm_servicebus_namespace.this.tenant_id
}

output "default_primary_connection_string" {
  description = "The primary connection string for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_servicebus_namespace.this.default_primary_connection_string
}

output "default_secondary_connection_string" {
  description = "The secondary connection string for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_servicebus_namespace.this.default_secondary_connection_string
}

output "default_primary_key" {
  description = "The primary access key for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_servicebus_namespace.this.default_primary_key
  sensitive   = true
}

output "default_secondary_key" {
  description = "The secondary access key for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_servicebus_namespace.this.default_secondary_key
  sensitive   = true
}

