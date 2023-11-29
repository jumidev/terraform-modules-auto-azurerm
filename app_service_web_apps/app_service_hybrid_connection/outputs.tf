output "app_service_name" {
  value = azurerm_app_service_hybrid_connection.this.app_service_name
}

output "resource_group_name" {
  value = azurerm_app_service_hybrid_connection.this.resource_group_name
}

output "relay_id" {
  value = azurerm_app_service_hybrid_connection.this.relay_id
}

output "hostname" {
  value = azurerm_app_service_hybrid_connection.this.hostname
}

output "port" {
  value = azurerm_app_service_hybrid_connection.this.port
}

output "send_key_name" {
  value = azurerm_app_service_hybrid_connection.this.send_key_name
}

output "id" {
  description = "The ID of the App Service."
  value       = azurerm_app_service_hybrid_connection.this.id
}

output "namespace_name" {
  description = "The name of the Relay Namespace."
  value       = azurerm_app_service_hybrid_connection.this.namespace_name
}

output "send_key_value" {
  description = "The value of the Service Bus Primary Access key."
  value       = azurerm_app_service_hybrid_connection.this.send_key_value
}

output "service_bus_namespace" {
  description = "The name of the Service Bus namespace."
  value       = azurerm_app_service_hybrid_connection.this.service_bus_namespace
}

output "service_bus_suffix" {
  description = "The suffix for the service bus endpoint."
  value       = azurerm_app_service_hybrid_connection.this.service_bus_suffix
}

