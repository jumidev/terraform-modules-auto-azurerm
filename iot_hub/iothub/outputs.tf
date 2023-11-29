output "name" {
  value = azurerm_iothub.this.name
}

output "resource_group_name" {
  value = azurerm_iothub.this.resource_group_name
}

output "location" {
  value = azurerm_iothub.this.location
}

output "sku" {
  value = azurerm_iothub.this.sku
}

output "local_authentication_enabled" {
  value = azurerm_iothub.this.local_authentication_enabled
}

output "event_hub_partition_count" {
  value = azurerm_iothub.this.event_hub_partition_count
}

output "event_hub_retention_in_days" {
  value = azurerm_iothub.this.event_hub_retention_in_days
}

output "endpoint" {
  value = azurerm_iothub.this.endpoint
}

output "fallback_route" {
  value = azurerm_iothub.this.fallback_route
}

output "file_upload" {
  value = azurerm_iothub.this.file_upload
}

output "identity" {
  value = azurerm_iothub.this.identity
}

output "network_rule_set" {
  value = azurerm_iothub.this.network_rule_set
}

output "route" {
  value = azurerm_iothub.this.route
}

output "enrichment" {
  value = azurerm_iothub.this.enrichment
}

output "cloud_to_device" {
  value = azurerm_iothub.this.cloud_to_device
}

output "public_network_access_enabled" {
  value = azurerm_iothub.this.public_network_access_enabled
}

output "min_tls_version" {
  value = azurerm_iothub.this.min_tls_version
}

output "tags" {
  value = azurerm_iothub.this.tags
}

output "id" {
  description = "The ID of the IoTHub."
  value       = azurerm_iothub.this.id
}

output "event_hub_events_endpoint" {
  description = "The EventHub compatible endpoint for events data"
  value       = azurerm_iothub.this.event_hub_events_endpoint
}

output "event_hub_events_namespace" {
  description = "The EventHub namespace for events data"
  value       = azurerm_iothub.this.event_hub_events_namespace
}

output "event_hub_events_path" {
  description = "The EventHub compatible path for events data"
  value       = azurerm_iothub.this.event_hub_events_path
}

output "event_hub_operations_endpoint" {
  description = "The EventHub compatible endpoint for operational data"
  value       = azurerm_iothub.this.event_hub_operations_endpoint
}

output "event_hub_operations_path" {
  description = "The EventHub compatible path for operational data"
  value       = azurerm_iothub.this.event_hub_operations_path
}

output "hostname" {
  description = "The hostname of the IotHub Resource."
  value       = azurerm_iothub.this.hostname
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_iothub.this.identity
}

output "shared_access_policy" {
  description = "One or more 'shared_access_policy' blocks."
  value       = azurerm_iothub.this.shared_access_policy
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_iothub.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_iothub.this.tenant_id
}

output "key_name" {
  description = "The name of the shared access policy."
  value       = azurerm_iothub.this.key_name
}

output "primary_key" {
  description = "The primary key."
  value       = azurerm_iothub.this.primary_key
}

output "secondary_key" {
  description = "The secondary key."
  value       = azurerm_iothub.this.secondary_key
}

output "permissions" {
  description = "The permissions assigned to the shared access policy."
  value       = azurerm_iothub.this.permissions
}

