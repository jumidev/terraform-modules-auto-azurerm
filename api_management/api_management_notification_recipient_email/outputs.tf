output "api_management_id" {
  value = azurerm_api_management_notification_recipient_email.this.api_management_id
}

output "email" {
  value = azurerm_api_management_notification_recipient_email.this.email
}

output "notification_type" {
  value = azurerm_api_management_notification_recipient_email.this.notification_type
}

output "id" {
  description = "The ID of the API Management Notification Recipient Email."
  value       = azurerm_api_management_notification_recipient_email.this.id
}

