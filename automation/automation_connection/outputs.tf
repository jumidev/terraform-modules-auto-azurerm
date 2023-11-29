output "name" {
  value = azurerm_automation_connection.this.name
}

output "resource_group_name" {
  value = azurerm_automation_connection.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_connection.this.automation_account_name
}

output "type" {
  value = azurerm_automation_connection.this.type
}

output "values" {
  value = azurerm_automation_connection.this.values
}

output "Azure" {
  value = azurerm_automation_connection.this.Azure
}

output "AzureClassicCertificate" {
  value = azurerm_automation_connection.this.AzureClassicCertificate
}

output "AzureServicePrincipal" {
  value = azurerm_automation_connection.this.AzureServicePrincipal
}

output "description" {
  value = azurerm_automation_connection.this.description
}

output "id" {
  description = "The Automation Connection ID."
  value       = azurerm_automation_connection.this.id
}

