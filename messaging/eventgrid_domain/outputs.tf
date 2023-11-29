output "name" {
  value = azurerm_eventgrid_domain.this.name
}

output "resource_group_name" {
  value = azurerm_eventgrid_domain.this.resource_group_name
}

output "location" {
  value = azurerm_eventgrid_domain.this.location
}

output "identity" {
  value = azurerm_eventgrid_domain.this.identity
}

output "input_schema" {
  value = azurerm_eventgrid_domain.this.input_schema
}

output "input_mapping_fields" {
  value = azurerm_eventgrid_domain.this.input_mapping_fields
}

output "input_mapping_default_values" {
  value = azurerm_eventgrid_domain.this.input_mapping_default_values
}

output "public_network_access_enabled" {
  value = azurerm_eventgrid_domain.this.public_network_access_enabled
}

output "local_auth_enabled" {
  value = azurerm_eventgrid_domain.this.local_auth_enabled
}

output "auto_create_topic_with_first_subscription" {
  value = azurerm_eventgrid_domain.this.auto_create_topic_with_first_subscription
}

output "auto_delete_topic_with_last_subscription" {
  value = azurerm_eventgrid_domain.this.auto_delete_topic_with_last_subscription
}

output "inbound_ip_rule" {
  value = azurerm_eventgrid_domain.this.inbound_ip_rule
}

output "tags" {
  value = azurerm_eventgrid_domain.this.tags
}

output "id" {
  description = "The ID of the EventGrid Domain."
  value       = azurerm_eventgrid_domain.this.id
}

output "endpoint" {
  description = "The Endpoint associated with the EventGrid Domain."
  value       = azurerm_eventgrid_domain.this.endpoint
}

output "primary_access_key" {
  description = "The Primary Shared Access Key associated with the EventGrid Domain."
  value       = azurerm_eventgrid_domain.this.primary_access_key
}

output "secondary_access_key" {
  description = "The Secondary Shared Access Key associated with the EventGrid Domain."
  value       = azurerm_eventgrid_domain.this.secondary_access_key
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this Event Grid Domain."
  value       = azurerm_eventgrid_domain.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_eventgrid_domain.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_eventgrid_domain.this.tenant_id
}

