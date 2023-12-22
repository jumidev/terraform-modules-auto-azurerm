output "data_flow" {
  value = azurerm_monitor_data_collection_rule.this.data_flow
}

output "destinations" {
  value = azurerm_monitor_data_collection_rule.this.destinations
}

output "location" {
  value = azurerm_monitor_data_collection_rule.this.location
}

output "name" {
  value = azurerm_monitor_data_collection_rule.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_data_collection_rule.this.resource_group_name
}

output "data_collection_endpoint_id" {
  value = azurerm_monitor_data_collection_rule.this.data_collection_endpoint_id
}

output "data_sources" {
  value = azurerm_monitor_data_collection_rule.this.data_sources
}

output "description" {
  value = azurerm_monitor_data_collection_rule.this.description
}

output "identity" {
  value = azurerm_monitor_data_collection_rule.this.identity
}

output "kind" {
  value = azurerm_monitor_data_collection_rule.this.kind
}

output "stream_declaration" {
  value = azurerm_monitor_data_collection_rule.this.stream_declaration
}

output "tags" {
  value = azurerm_monitor_data_collection_rule.this.tags
}

output "id" {
  description = "The ID of the Data Collection Rule."
  value       = azurerm_monitor_data_collection_rule.this.id
}

output "immutable_id" {
  description = "The immutable ID of the Data Collection Rule."
  value       = azurerm_monitor_data_collection_rule.this.immutable_id
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_monitor_data_collection_rule.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_monitor_data_collection_rule.this.tenant_id
}

output "monitor_data_collection_rule_association" {
  value = var.monitor_data_collection_rule_association
}

