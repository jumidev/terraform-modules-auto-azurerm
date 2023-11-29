output "alert_notifications" {
  value = azurerm_security_center_contact.this.alert_notifications
}

output "alerts_to_admins" {
  value = azurerm_security_center_contact.this.alerts_to_admins
}

output "email" {
  value = azurerm_security_center_contact.this.email
}

output "name" {
  value = azurerm_security_center_contact.this.name
}

output "phone" {
  value = azurerm_security_center_contact.this.phone
}

output "id" {
  description = "The Security Center Contact ID."
  value       = azurerm_security_center_contact.this.id
}

