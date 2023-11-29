output "name" {
  value = azurerm_automation_certificate.this.name
}

output "resource_group_name" {
  value = azurerm_automation_certificate.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_certificate.this.automation_account_name
}

output "base64" {
  value = azurerm_automation_certificate.this.base64
}

output "description" {
  value = azurerm_automation_certificate.this.description
}

output "exportable" {
  value = azurerm_automation_certificate.this.exportable
}

output "id" {
  description = "The Automation Certificate ID."
  value       = azurerm_automation_certificate.this.id
}

output "thumbprint" {
  description = "The thumbprint for the certificate."
  value       = azurerm_automation_certificate.this.thumbprint
}

