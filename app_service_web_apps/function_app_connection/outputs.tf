output "name" {
  value = azurerm_function_app_connection.this.name
}

output "function_app_id" {
  value = azurerm_function_app_connection.this.function_app_id
}

output "target_resource_id" {
  value = azurerm_function_app_connection.this.target_resource_id
}

output "authentication" {
  value = azurerm_function_app_connection.this.authentication
}

