output "name" {
  value = azurerm_notification_hub_namespace.this.name
}

output "resource_group_name" {
  value = azurerm_notification_hub_namespace.this.resource_group_name
}

output "location" {
  value = azurerm_notification_hub_namespace.this.location
}

output "namespace_type" {
  value = azurerm_notification_hub_namespace.this.namespace_type
}

output "sku_name" {
  value = azurerm_notification_hub_namespace.this.sku_name
}

output "enabled" {
  value = azurerm_notification_hub_namespace.this.enabled
}

output "tags" {
  value = azurerm_notification_hub_namespace.this.tags
}

output "id" {
  description = "The ID of the Notification Hub Namespace."
  value       = azurerm_notification_hub_namespace.this.id
}

output "servicebus_endpoint" {
  description = "The ServiceBus Endpoint for this Notification Hub Namespace."
  value       = azurerm_notification_hub_namespace.this.servicebus_endpoint
}

