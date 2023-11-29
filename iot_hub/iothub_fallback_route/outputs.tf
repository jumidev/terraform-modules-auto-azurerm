output "resource_group_name" {
  value = azurerm_iothub_fallback_route.this.resource_group_name
}

output "iothub_name" {
  value = azurerm_iothub_fallback_route.this.iothub_name
}

output "source" {
  value = azurerm_iothub_fallback_route.this.source
}

output "enabled" {
  value = azurerm_iothub_fallback_route.this.enabled
}

output "endpoint_names" {
  value = azurerm_iothub_fallback_route.this.endpoint_names
}

output "condition" {
  value = azurerm_iothub_fallback_route.this.condition
}

output "id" {
  description = "The ID of the IoTHub Fallback Route."
  value       = azurerm_iothub_fallback_route.this.id
}

