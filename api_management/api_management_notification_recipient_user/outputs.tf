output "api_management_id" {
  value = azurerm_api_management_notification_recipient_user.this.api_management_id
}

output "user_id" {
  value = azurerm_api_management_notification_recipient_user.this.user_id
}

output "notification_type" {
  value = azurerm_api_management_notification_recipient_user.this.notification_type
}

output "id" {
  description = "The ID of the API Management Notification Recipient User."
  value       = azurerm_api_management_notification_recipient_user.this.id
}

