output "name" {
  value = azurerm_eventgrid_topic.this.name
}

output "resource_group_name" {
  value = azurerm_eventgrid_topic.this.resource_group_name
}

output "location" {
  value = azurerm_eventgrid_topic.this.location
}

output "identity" {
  value = azurerm_eventgrid_topic.this.identity
}

output "input_schema" {
  value = azurerm_eventgrid_topic.this.input_schema
}

output "input_mapping_fields" {
  value = azurerm_eventgrid_topic.this.input_mapping_fields
}

output "input_mapping_default_values" {
  value = azurerm_eventgrid_topic.this.input_mapping_default_values
}

output "public_network_access_enabled" {
  value = azurerm_eventgrid_topic.this.public_network_access_enabled
}

output "local_auth_enabled" {
  value = azurerm_eventgrid_topic.this.local_auth_enabled
}

output "inbound_ip_rule" {
  value = azurerm_eventgrid_topic.this.inbound_ip_rule
}

output "tags" {
  value = azurerm_eventgrid_topic.this.tags
}

output "id" {
  description = "The EventGrid Topic ID."
  value       = azurerm_eventgrid_topic.this.id
}

output "endpoint" {
  description = "The Endpoint associated with the EventGrid Topic."
  value       = azurerm_eventgrid_topic.this.endpoint
}

output "primary_access_key" {
  description = "The Primary Shared Access Key associated with the EventGrid Topic."
  value       = azurerm_eventgrid_topic.this.primary_access_key
}

output "secondary_access_key" {
  description = "The Secondary Shared Access Key associated with the EventGrid Topic."
  value       = azurerm_eventgrid_topic.this.secondary_access_key
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_eventgrid_topic.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_eventgrid_topic.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_eventgrid_topic.this.tenant_id
}

