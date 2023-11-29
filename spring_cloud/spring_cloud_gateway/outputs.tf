output "name" {
  value = azurerm_spring_cloud_gateway.this.name
}

output "spring_cloud_service_id" {
  value = azurerm_spring_cloud_gateway.this.spring_cloud_service_id
}

output "api_metadata" {
  value = azurerm_spring_cloud_gateway.this.api_metadata
}

output "application_performance_monitoring_types" {
  value = azurerm_spring_cloud_gateway.this.application_performance_monitoring_types
}

output "client_authorization" {
  value = azurerm_spring_cloud_gateway.this.client_authorization
}

output "cors" {
  value = azurerm_spring_cloud_gateway.this.cors
}

output "environment_variables" {
  value = azurerm_spring_cloud_gateway.this.environment_variables
}

output "https_only" {
  value = azurerm_spring_cloud_gateway.this.https_only
}

output "instance_count" {
  value = azurerm_spring_cloud_gateway.this.instance_count
}

output "public_network_access_enabled" {
  value = azurerm_spring_cloud_gateway.this.public_network_access_enabled
}

output "quota" {
  value = azurerm_spring_cloud_gateway.this.quota
}

output "sensitive_environment_variables" {
  value = azurerm_spring_cloud_gateway.this.sensitive_environment_variables
}

output "sso" {
  value = azurerm_spring_cloud_gateway.this.sso
}

output "id" {
  description = "The ID of the Spring Cloud Gateway."
  value       = azurerm_spring_cloud_gateway.this.id
}

output "url" {
  description = "URL of the Spring Cloud Gateway, exposed when 'public_network_access_enabled' is true."
  value       = azurerm_spring_cloud_gateway.this.url
}

