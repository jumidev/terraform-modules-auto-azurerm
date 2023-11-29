output "name" {
  value = azurerm_datadog_monitors.this.name
}

output "resource_group_name" {
  value = azurerm_datadog_monitors.this.resource_group_name
}

output "location" {
  value = azurerm_datadog_monitors.this.location
}

output "sku_name" {
  value = azurerm_datadog_monitors.this.sku_name
}

output "identity" {
  value = azurerm_datadog_monitors.this.identity
}

output "user" {
  value = azurerm_datadog_monitors.this.user
}

output "datadog_organization" {
  value = azurerm_datadog_monitors.this.datadog_organization
}

output "monitoring_enabled" {
  value = azurerm_datadog_monitors.this.monitoring_enabled
}

output "tags" {
  value = azurerm_datadog_monitors.this.tags
}

output "id" {
  description = "The ID of the Datadog Monitor."
  value       = azurerm_datadog_monitors.this.id
}

output "identity" {
  description = "A 'identity' block."
  value       = azurerm_datadog_monitors.this.identity
}

output "marketplace_subscription_status" {
  description = "Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state."
  value       = azurerm_datadog_monitors.this.marketplace_subscription_status
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this Datadog Monitor."
  value       = azurerm_datadog_monitors.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this Datadog Monitor."
  value       = azurerm_datadog_monitors.this.tenant_id
}

