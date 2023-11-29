output "name" {
  value = azurerm_healthcare_medtech_service.this.name
}

output "workspace_id" {
  value = azurerm_healthcare_medtech_service.this.workspace_id
}

output "location" {
  value = azurerm_healthcare_medtech_service.this.location
}

output "identity" {
  value = azurerm_healthcare_medtech_service.this.identity
}

output "eventhub_namespace_name" {
  value = azurerm_healthcare_medtech_service.this.eventhub_namespace_name
}

output "eventhub_name" {
  value = azurerm_healthcare_medtech_service.this.eventhub_name
}

output "eventhub_consumer_group_name" {
  value = azurerm_healthcare_medtech_service.this.eventhub_consumer_group_name
}

output "device_mapping_json" {
  value = azurerm_healthcare_medtech_service.this.device_mapping_json
}

output "tags" {
  value = azurerm_healthcare_medtech_service.this.tags
}

output "id" {
  description = "The ID of the Healthcare Med Tech Service."
  value       = azurerm_healthcare_medtech_service.this.id
}

output "type" {
  description = "The type of identity used for the Healthcare Med Tech service."
  value       = azurerm_healthcare_medtech_service.this.type
}

output "principal_id" {
  description = "The Principal ID associated with this System Assigned Managed Service Identity."
  value       = azurerm_healthcare_medtech_service.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this System Assigned Managed Service Identity."
  value       = azurerm_healthcare_medtech_service.this.tenant_id
}

