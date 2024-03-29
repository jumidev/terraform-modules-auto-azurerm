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

output "write_access_id" {
  description = "The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource. ~> **NOTE:** You must define at least one of the above access resource id attributes (e.g. 'read_access_id' or 'write_access_id'). In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_log_analytics_linked_service.this.write_access_id
}

output "id" {
  description = "The Log Analytics Linked Service ID."
  value       = azurerm_log_analytics_linked_service.this.id
}

output "name" {
  description = "The generated name of the Linked Service. The format for this attribute is always '<workspace name>/<linked service type>'(e.g. 'workspace1/Automation' or 'workspace1/Cluster')"
  value       = azurerm_log_analytics_linked_service.this.name
}

