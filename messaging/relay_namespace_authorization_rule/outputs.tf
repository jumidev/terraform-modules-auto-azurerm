output "name" {
  value = azurerm_relay_namespace_authorization_rule.this.name
}

output "namespace_name" {
  value = azurerm_relay_namespace_authorization_rule.this.namespace_name
}

output "resource_group_name" {
  value = azurerm_relay_namespace_authorization_rule.this.resource_group_name
}

output "listen" {
  value = azurerm_relay_namespace_authorization_rule.this.listen
}

output "send" {
  value = azurerm_relay_namespace_authorization_rule.this.send
}

output "manage" {
  value = azurerm_relay_namespace_authorization_rule.this.manage
}

output "id" {
  description = "The ID of the Azure Relay Namespace Authorization Rule."
  value       = azurerm_relay_namespace_authorization_rule.this.id
}

output "primary_key" {
  description = "The Primary Key for the Azure Relay Namespace Authorization Rule."
  value       = azurerm_relay_namespace_authorization_rule.this.primary_key
}

output "primary_connection_string" {
  description = "The Primary Connection String for the Azure Relay Namespace Authorization Rule."
  value       = azurerm_relay_namespace_authorization_rule.this.primary_connection_string
}

output "secondary_key" {
  description = "The Secondary Key for the Azure Relay Namespace Authorization Rule."
  value       = azurerm_relay_namespace_authorization_rule.this.secondary_key
}

output "secondary_connection_string" {
  description = "The Secondary Connection String for the Azure Relay Namespace Authorization Rule."
  value       = azurerm_relay_namespace_authorization_rule.this.secondary_connection_string
}

