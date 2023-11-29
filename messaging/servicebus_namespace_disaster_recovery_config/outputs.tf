output "name" {
  value = azurerm_servicebus_namespace_disaster_recovery_config.this.name
}

output "primary_namespace_id" {
  value = azurerm_servicebus_namespace_disaster_recovery_config.this.primary_namespace_id
}

output "partner_namespace_id" {
  value = azurerm_servicebus_namespace_disaster_recovery_config.this.partner_namespace_id
}

output "alias_authorization_rule_id" {
  value     = azurerm_servicebus_namespace_disaster_recovery_config.this.alias_authorization_rule_id
  sensitive = true
}

output "id" {
  description = "The Service Bus Namespace Disaster Recovery Config ID."
  value       = azurerm_servicebus_namespace_disaster_recovery_config.this.id
}

output "primary_connection_string_alias" {
  description = "The alias Primary Connection String for the ServiceBus Namespace."
  value       = azurerm_servicebus_namespace_disaster_recovery_config.this.primary_connection_string_alias
}

output "secondary_connection_string_alias" {
  description = "The alias Secondary Connection String for the ServiceBus Namespace"
  value       = azurerm_servicebus_namespace_disaster_recovery_config.this.secondary_connection_string_alias
}

output "default_primary_key" {
  description = "The primary access key for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_servicebus_namespace_disaster_recovery_config.this.default_primary_key
}

output "default_secondary_key" {
  description = "The secondary access key for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_servicebus_namespace_disaster_recovery_config.this.default_secondary_key
}

