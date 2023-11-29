output "name" {
  value = azurerm_automation_connection_service_principal.this.name
}

output "resource_group_name" {
  value = azurerm_automation_connection_service_principal.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_connection_service_principal.this.automation_account_name
}

output "application_id" {
  value = azurerm_automation_connection_service_principal.this.application_id
}

output "certificate_thumbprint" {
  value = azurerm_automation_connection_service_principal.this.certificate_thumbprint
}

output "subscription_id" {
  value = azurerm_automation_connection_service_principal.this.subscription_id
}

output "tenant_id" {
  value = azurerm_automation_connection_service_principal.this.tenant_id
}

output "description" {
  value = azurerm_automation_connection_service_principal.this.description
}

output "id" {
  description = "The Automation Connection ID."
  value       = azurerm_automation_connection_service_principal.this.id
}

