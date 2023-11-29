output "name" {
  value = azurerm_lab_service_plan.this.name
}

output "resource_group_name" {
  value = azurerm_lab_service_plan.this.resource_group_name
}

output "location" {
  value = azurerm_lab_service_plan.this.location
}

output "allowed_regions" {
  value = azurerm_lab_service_plan.this.allowed_regions
}

output "default_auto_shutdown" {
  value = azurerm_lab_service_plan.this.default_auto_shutdown
}

output "default_connection" {
  value = azurerm_lab_service_plan.this.default_connection
}

output "default_network_subnet_id" {
  value = azurerm_lab_service_plan.this.default_network_subnet_id
}

output "shared_gallery_id" {
  value = azurerm_lab_service_plan.this.shared_gallery_id
}

output "support" {
  value = azurerm_lab_service_plan.this.support
}

output "tags" {
  value = azurerm_lab_service_plan.this.tags
}

output "id" {
  description = "The ID of the Lab Service Plan."
  value       = azurerm_lab_service_plan.this.id
}

