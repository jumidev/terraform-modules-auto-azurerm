output "name" {
  value = azurerm_iothub_route.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_route.this.resource_group_name
}

output "iothub_name" {
  value = azurerm_iothub_route.this.iothub_name
}

output "source" {
  value = azurerm_iothub_route.this.source
}

output "condition" {
  value = azurerm_iothub_route.this.condition
}

output "endpoint_names" {
  value = azurerm_iothub_route.this.endpoint_names
}

output "enabled" {
  value = azurerm_iothub_route.this.enabled
}

output "id" {
  description = "The ID of the IoTHub Route."
  value       = azurerm_iothub_route.this.id
}

