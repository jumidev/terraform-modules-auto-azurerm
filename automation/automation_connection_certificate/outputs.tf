output "name" {
  value = azurerm_automation_connection_certificate.this.name
}

output "resource_group_name" {
  value = azurerm_automation_connection_certificate.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_connection_certificate.this.automation_account_name
}

output "automation_certificate_name" {
  value = azurerm_automation_connection_certificate.this.automation_certificate_name
}

output "subscription_id" {
  value = azurerm_automation_connection_certificate.this.subscription_id
}

output "description" {
  value = azurerm_automation_connection_certificate.this.description
}

output "id" {
  description = "The Automation Connection ID."
  value       = azurerm_automation_connection_certificate.this.id
}

