output "name" {
  value = azurerm_container_app_job.this.name
}

output "location" {
  value = azurerm_container_app_job.this.location
}

output "resource_group_name" {
  value = azurerm_container_app_job.this.resource_group_name
}

output "container_app_environment_id" {
  value = azurerm_container_app_job.this.container_app_environment_id
}

output "template" {
  value = azurerm_container_app_job.this.template
}

output "replica_timeout_in_seconds" {
  value = azurerm_container_app_job.this.replica_timeout_in_seconds
}

output "workload_profile_name" {
  value = azurerm_container_app_job.this.workload_profile_name
}

output "replica_retry_limit" {
  value = azurerm_container_app_job.this.replica_retry_limit
}

output "secret" {
  value = azurerm_container_app_job.this.secret
}

output "registry" {
  value = azurerm_container_app_job.this.registry
}

output "manual_trigger_config" {
  value = azurerm_container_app_job.this.manual_trigger_config
}

output "event_trigger_config" {
  value = azurerm_container_app_job.this.event_trigger_config
}

output "schedule_trigger_config" {
  value = azurerm_container_app_job.this.schedule_trigger_config
}

output "identity" {
  value = azurerm_container_app_job.this.identity
}

output "tags" {
  value = azurerm_container_app_job.this.tags
}

output "identity_ids" {
  description = "A list of Managed Identity IDs to assign to the Container App Job. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_container_app_job.this.identity_ids
}

output "id" {
  description = "The ID of the Container App Job."
  value       = azurerm_container_app_job.this.id
}

output "outbound_ip_addresses" {
  description = "A list of the Public IP Addresses which the Container App uses for outbound network access."
  value       = azurerm_container_app_job.this.outbound_ip_addresses
}

output "event_stream_endpoint" {
  description = "The endpoint for the Container App Job event stream."
  value       = azurerm_container_app_job.this.event_stream_endpoint
}

