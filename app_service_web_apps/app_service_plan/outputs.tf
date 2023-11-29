output "name" {
  value = azurerm_app_service_plan.this.name
}

output "resource_group_name" {
  value = azurerm_app_service_plan.this.resource_group_name
}

output "location" {
  value = azurerm_app_service_plan.this.location
}

output "kind" {
  value = azurerm_app_service_plan.this.kind
}

output "maximum_elastic_worker_count" {
  value = azurerm_app_service_plan.this.maximum_elastic_worker_count
}

output "sku" {
  value = azurerm_app_service_plan.this.sku
}

output "app_service_environment_id" {
  value = azurerm_app_service_plan.this.app_service_environment_id
}

output "reserved" {
  value = azurerm_app_service_plan.this.reserved
}

output "per_site_scaling" {
  value = azurerm_app_service_plan.this.per_site_scaling
}

output "is_xenon" {
  value = azurerm_app_service_plan.this.is_xenon
}

output "zone_redundant" {
  value = azurerm_app_service_plan.this.zone_redundant
}

output "tags" {
  value = azurerm_app_service_plan.this.tags
}

output "id" {
  description = "The ID of the App Service Plan component."
  value       = azurerm_app_service_plan.this.id
}

output "maximum_number_of_workers" {
  description = "The maximum number of workers supported with the App Service Plan's sku."
  value       = azurerm_app_service_plan.this.maximum_number_of_workers
}

