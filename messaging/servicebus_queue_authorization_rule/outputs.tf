output "name" {
  value = azurerm_servicebus_queue_authorization_rule.this.name
}

output "queue_id" {
  value = azurerm_servicebus_queue_authorization_rule.this.queue_id
}

output "listen" {
  value = azurerm_servicebus_queue_authorization_rule.this.listen
}

output "send" {
  value = azurerm_servicebus_queue_authorization_rule.this.send
}

output "manage" {
  value = azurerm_servicebus_queue_authorization_rule.this.manage
}

output "id" {
  description = "The ID of the Authorization Rule."
  value       = azurerm_servicebus_queue_authorization_rule.this.id
}

output "primary_key" {
  description = "The Primary Key for the Authorization Rule."
  value       = azurerm_servicebus_queue_authorization_rule.this.primary_key
}

output "primary_connection_string" {
  description = "The Primary Connection String for the Authorization Rule."
  value       = azurerm_servicebus_queue_authorization_rule.this.primary_connection_string
}

output "secondary_key" {
  description = "The Secondary Key for the Authorization Rule."
  value       = azurerm_servicebus_queue_authorization_rule.this.secondary_key
}

output "secondary_connection_string" {
  description = "The Secondary Connection String for the Authorization Rule."
  value       = azurerm_servicebus_queue_authorization_rule.this.secondary_connection_string
}

output "primary_connection_string_alias" {
  description = "The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired."
  value       = azurerm_servicebus_queue_authorization_rule.this.primary_connection_string_alias
}

output "secondary_connection_string_alias" {
  description = "The alias Secondary Connection String for the ServiceBus Namespace"
  value       = azurerm_servicebus_queue_authorization_rule.this.secondary_connection_string_alias
}

