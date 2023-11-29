output "name" {
  value = azurerm_service_plan.this.name
}

output "location" {
  value = azurerm_service_plan.this.location
}

output "os_type" {
  value = azurerm_service_plan.this.os_type
}

output "resource_group_name" {
  value = azurerm_service_plan.this.resource_group_name
}

output "sku_name" {
  value = azurerm_service_plan.this.sku_name
}

output "app_service_environment_id" {
  value = azurerm_service_plan.this.app_service_environment_id
}

output "maximum_elastic_worker_count" {
  value = azurerm_service_plan.this.maximum_elastic_worker_count
}

output "worker_count" {
  value = azurerm_service_plan.this.worker_count
}

output "per_site_scaling_enabled" {
  value = azurerm_service_plan.this.per_site_scaling_enabled
}

output "zone_balancing_enabled" {
  value = azurerm_service_plan.this.zone_balancing_enabled
}

output "tags" {
  value = azurerm_service_plan.this.tags
}

output "id" {
  description = "The ID of the Service Plan."
  value       = azurerm_service_plan.this.id
}

output "kind" {
  description = "A string representing the Kind of Service Plan."
  value       = azurerm_service_plan.this.kind
}

output "reserved" {
  description = "Whether this is a reserved Service Plan Type. 'true' if 'os_type' is 'Linux', otherwise 'false'."
  value       = azurerm_service_plan.this.reserved
}

