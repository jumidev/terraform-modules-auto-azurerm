output "name" {
  value = azurerm_notification_hub.this.name
}

output "namespace_name" {
  value = azurerm_notification_hub.this.namespace_name
}

output "resource_group_name" {
  value = azurerm_notification_hub.this.resource_group_name
}

output "location" {
  value = azurerm_notification_hub.this.location
}

output "apns_credential" {
  value = azurerm_notification_hub.this.apns_credential
}

output "gcm_credential" {
  value = azurerm_notification_hub.this.gcm_credential
}

output "tags" {
  value = azurerm_notification_hub.this.tags
}

output "id" {
  description = "The ID of the Notification Hub."
  value       = azurerm_notification_hub.this.id
}

