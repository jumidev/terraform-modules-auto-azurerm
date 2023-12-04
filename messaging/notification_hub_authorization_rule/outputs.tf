output "name" {
  value = azurerm_notification_hub_authorization_rule.this.name
}

output "notification_hub_name" {
  value = azurerm_notification_hub_authorization_rule.this.notification_hub_name
}

output "namespace_name" {
  value = azurerm_notification_hub_authorization_rule.this.namespace_name
}

output "resource_group_name" {
  value = azurerm_notification_hub_authorization_rule.this.resource_group_name
}

output "manage" {
  value = azurerm_notification_hub_authorization_rule.this.manage
}

output "send" {
  value = azurerm_notification_hub_authorization_rule.this.send
}

output "listen" {
  value = azurerm_notification_hub_authorization_rule.this.listen
}

output "id" {
  description = "The ID of the Authorization Rule."
  value       = azurerm_notification_hub_authorization_rule.this.id
}

output "primary_access_key" {
  description = "The Primary Access Key associated with this Authorization Rule."
  value       = azurerm_notification_hub_authorization_rule.this.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "The Secondary Access Key associated with this Authorization Rule."
  value       = azurerm_notification_hub_authorization_rule.this.secondary_access_key
  sensitive   = true
}

