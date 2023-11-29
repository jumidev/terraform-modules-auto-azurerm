output "namespace_id" {
  value = azurerm_servicebus_namespace_network_rule_set.this.namespace_id
}

output "default_action" {
  value = azurerm_servicebus_namespace_network_rule_set.this.default_action
}

output "public_network_access_enabled" {
  value = azurerm_servicebus_namespace_network_rule_set.this.public_network_access_enabled
}

output "trusted_services_allowed" {
  value = azurerm_servicebus_namespace_network_rule_set.this.trusted_services_allowed
}

output "ip_rules" {
  value = azurerm_servicebus_namespace_network_rule_set.this.ip_rules
}

output "network_rules" {
  value = azurerm_servicebus_namespace_network_rule_set.this.network_rules
}

output "id" {
  description = "The ID of the ServiceBus Namespace Network Rule Set."
  value       = azurerm_servicebus_namespace_network_rule_set.this.id
}

