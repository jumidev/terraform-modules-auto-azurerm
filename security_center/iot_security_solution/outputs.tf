output "name" {
  value = azurerm_iot_security_solution.this.name
}

output "resource_group_name" {
  value = azurerm_iot_security_solution.this.resource_group_name
}

output "location" {
  value = azurerm_iot_security_solution.this.location
}

output "display_name" {
  value = azurerm_iot_security_solution.this.display_name
}

output "iothub_ids" {
  value = azurerm_iot_security_solution.this.iothub_ids
}

output "additional_workspace" {
  value = azurerm_iot_security_solution.this.additional_workspace
}

output "disabled_data_sources" {
  value = azurerm_iot_security_solution.this.disabled_data_sources
}

output "enabled" {
  value = azurerm_iot_security_solution.this.enabled
}

output "events_to_export" {
  value = azurerm_iot_security_solution.this.events_to_export
}

output "log_analytics_workspace_id" {
  value = azurerm_iot_security_solution.this.log_analytics_workspace_id
}

output "log_unmasked_ips_enabled" {
  value = azurerm_iot_security_solution.this.log_unmasked_ips_enabled
}

output "recommendations_enabled" {
  value = azurerm_iot_security_solution.this.recommendations_enabled
}

output "query_for_resources" {
  value = azurerm_iot_security_solution.this.query_for_resources
}

output "query_subscription_ids" {
  value = azurerm_iot_security_solution.this.query_subscription_ids
}

output "tags" {
  value = azurerm_iot_security_solution.this.tags
}

output "id" {
  description = "The ID of the Iot Security Solution resource."
  value       = azurerm_iot_security_solution.this.id
}

