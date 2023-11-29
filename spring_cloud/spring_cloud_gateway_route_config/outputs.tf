output "name" {
  value = azurerm_spring_cloud_gateway_route_config.this.name
}

output "spring_cloud_gateway_id" {
  value = azurerm_spring_cloud_gateway_route_config.this.spring_cloud_gateway_id
}

output "filters" {
  value = azurerm_spring_cloud_gateway_route_config.this.filters
}

output "predicates" {
  value = azurerm_spring_cloud_gateway_route_config.this.predicates
}

output "sso_validation_enabled" {
  value = azurerm_spring_cloud_gateway_route_config.this.sso_validation_enabled
}

output "route" {
  value = azurerm_spring_cloud_gateway_route_config.this.route
}

output "open_api" {
  value = azurerm_spring_cloud_gateway_route_config.this.open_api
}

output "protocol" {
  value = azurerm_spring_cloud_gateway_route_config.this.protocol
}

output "spring_cloud_app_id" {
  value = azurerm_spring_cloud_gateway_route_config.this.spring_cloud_app_id
}

output "id" {
  description = "The ID of the Spring Cloud Gateway Route Config."
  value       = azurerm_spring_cloud_gateway_route_config.this.id
}

