output "name" {
  value = azurerm_app_service_connection.this.name
}

output "app_service_id" {
  value = azurerm_app_service_connection.this.app_service_id
}

output "target_resource_id" {
  value = azurerm_app_service_connection.this.target_resource_id
}

output "authentication" {
  value = azurerm_app_service_connection.this.authentication
}

