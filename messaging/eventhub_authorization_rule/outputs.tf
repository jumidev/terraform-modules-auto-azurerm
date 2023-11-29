output "name" {
  value = azurerm_eventhub_authorization_rule.this.name
}

output "namespace_name" {
  value = azurerm_eventhub_authorization_rule.this.namespace_name
}

output "eventhub_name" {
  value = azurerm_eventhub_authorization_rule.this.eventhub_name
}

output "resource_group_name" {
  value = azurerm_eventhub_authorization_rule.this.resource_group_name
}

output "listen" {
  value = azurerm_eventhub_authorization_rule.this.listen
}

output "send" {
  value = azurerm_eventhub_authorization_rule.this.send
}

output "manage" {
  value = azurerm_eventhub_authorization_rule.this.manage
}

output "id" {
  description = "The EventHub ID."
  value       = azurerm_eventhub_authorization_rule.this.id
}

output "primary_connection_string_alias" {
  description = "The alias of the Primary Connection String for the Event Hubs authorization Rule, which is generated when disaster recovery is enabled."
  value       = azurerm_eventhub_authorization_rule.this.primary_connection_string_alias
}

output "secondary_connection_string_alias" {
  description = "The alias of the Secondary Connection String for the Event Hubs Authorization Rule, which is generated when disaster recovery is enabled."
  value       = azurerm_eventhub_authorization_rule.this.secondary_connection_string_alias
}

output "primary_connection_string" {
  description = "The Primary Connection String for the Event Hubs authorization Rule."
  value       = azurerm_eventhub_authorization_rule.this.primary_connection_string
}

output "primary_key" {
  description = "The Primary Key for the Event Hubs authorization Rule."
  value       = azurerm_eventhub_authorization_rule.this.primary_key
}

output "secondary_connection_string" {
  description = "The Secondary Connection String for the Event Hubs Authorization Rule."
  value       = azurerm_eventhub_authorization_rule.this.secondary_connection_string
}

output "secondary_key" {
  description = "The Secondary Key for the Event Hubs Authorization Rule."
  value       = azurerm_eventhub_authorization_rule.this.secondary_key
}

