output "name" {
  value = azurerm_eventhub_namespace_disaster_recovery_config.this.name
}

output "namespace_name" {
  value = azurerm_eventhub_namespace_disaster_recovery_config.this.namespace_name
}

output "resource_group_name" {
  value = azurerm_eventhub_namespace_disaster_recovery_config.this.resource_group_name
}

output "partner_namespace_id" {
  value = azurerm_eventhub_namespace_disaster_recovery_config.this.partner_namespace_id
}

output "id" {
  description = "The EventHub Namespace Disaster Recovery Config ID."
  value       = azurerm_eventhub_namespace_disaster_recovery_config.this.id
}

