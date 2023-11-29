output "location" {
  value = azurerm_eventgrid_system_topic.this.location
}

output "name" {
  value = azurerm_eventgrid_system_topic.this.name
}

output "resource_group_name" {
  value = azurerm_eventgrid_system_topic.this.resource_group_name
}

output "identity" {
  value = azurerm_eventgrid_system_topic.this.identity
}

output "source_arm_resource_id" {
  value = azurerm_eventgrid_system_topic.this.source_arm_resource_id
}

output "topic_type" {
  value = azurerm_eventgrid_system_topic.this.topic_type
}

output "id" {
  description = "The ID of the Event Grid System Topic."
  value       = azurerm_eventgrid_system_topic.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_eventgrid_system_topic.this.identity
}

output "metric_arm_resource_id" {
  description = "The Metric ARM Resource ID of the Event Grid System Topic."
  value       = azurerm_eventgrid_system_topic.this.metric_arm_resource_id
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_eventgrid_system_topic.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_eventgrid_system_topic.this.tenant_id
}

