output "function_app_id" {
  value = azurerm_function_app_hybrid_connection.this.function_app_id
}

output "relay_id" {
  value = azurerm_function_app_hybrid_connection.this.relay_id
}

output "hostname" {
  value = azurerm_function_app_hybrid_connection.this.hostname
}

output "port" {
  value = azurerm_function_app_hybrid_connection.this.port
}

output "send_key_name" {
  value = azurerm_function_app_hybrid_connection.this.send_key_name
}

output "id" {
  description = "The ID of the Function App Hybrid Connection"
  value       = azurerm_function_app_hybrid_connection.this.id
}

output "namespace_name" {
  description = "The name of the Relay Namespace."
  value       = azurerm_function_app_hybrid_connection.this.namespace_name
}

output "relay_name" {
  description = "The name of the Relay in use."
  value       = azurerm_function_app_hybrid_connection.this.relay_name
}

output "send_key_value" {
  description = "The Primary Access Key for the 'send_key_name'"
  value       = azurerm_function_app_hybrid_connection.this.send_key_value
  sensitive   = true
}

output "service_bus_namespace" {
  description = "The Service Bus Namespace."
  value       = azurerm_function_app_hybrid_connection.this.service_bus_namespace
}

output "service_bus_suffix" {
  description = "The suffix for the endpoint."
  value       = azurerm_function_app_hybrid_connection.this.service_bus_suffix
}

