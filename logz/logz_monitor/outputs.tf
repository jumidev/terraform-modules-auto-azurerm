output "name" {
  value = azurerm_logz_monitor.this.name
}

output "resource_group_name" {
  value = azurerm_logz_monitor.this.resource_group_name
}

output "location" {
  value = azurerm_logz_monitor.this.location
}

output "plan" {
  value = azurerm_logz_monitor.this.plan
}

output "user" {
  value = azurerm_logz_monitor.this.user
}

output "company_name" {
  value = azurerm_logz_monitor.this.company_name
}

output "enterprise_app_id" {
  value = azurerm_logz_monitor.this.enterprise_app_id
}

output "enabled" {
  value = azurerm_logz_monitor.this.enabled
}

output "tags" {
  value = azurerm_logz_monitor.this.tags
}

output "id" {
  description = "The ID of the logz Monitor."
  value       = azurerm_logz_monitor.this.id
}

output "single_sign_on_url" {
  description = "The single sign on url associated with the logz organization of this logz Monitor."
  value       = azurerm_logz_monitor.this.single_sign_on_url
}

output "logz_organization_id" {
  description = "The ID associated with the logz organization of this logz Monitor."
  value       = azurerm_logz_monitor.this.logz_organization_id
}

