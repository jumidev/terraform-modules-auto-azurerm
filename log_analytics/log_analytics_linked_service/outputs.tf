output "resource_group_name" {
  value = azurerm_log_analytics_linked_service.this.resource_group_name
}

output "workspace_id" {
  value = azurerm_log_analytics_linked_service.this.workspace_id
}

output "read_access_id" {
  value = azurerm_log_analytics_linked_service.this.read_access_id
}

output "write_access_id" {
  value = azurerm_log_analytics_linked_service.this.write_access_id
}

output "id" {
  description = "The Log Analytics Linked Service ID."
  value       = azurerm_log_analytics_linked_service.this.id
}

output "name" {
  description = "The generated name of the Linked Service. The format for this attribute is always '<workspace name>/<linked service type>'(e.g. 'workspace1/Automation' or 'workspace1/Cluster')"
  value       = azurerm_log_analytics_linked_service.this.name
}

