output "name" {
  value = azurerm_spring_cloud_configuration_service.this.name
}

output "spring_cloud_service_id" {
  value = azurerm_spring_cloud_configuration_service.this.spring_cloud_service_id
}

output "generation" {
  value = azurerm_spring_cloud_configuration_service.this.generation
}

output "repository" {
  value = azurerm_spring_cloud_configuration_service.this.repository
}

output "id" {
  description = "The ID of the Spring Cloud Configuration Service."
  value       = azurerm_spring_cloud_configuration_service.this.id
}

