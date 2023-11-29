output "name" {
  value = azurerm_spring_cloud_application_live_view.this.name
}

output "spring_cloud_service_id" {
  value = azurerm_spring_cloud_application_live_view.this.spring_cloud_service_id
}

output "id" {
  description = "The ID of the Spring Cloud Application Live View."
  value       = azurerm_spring_cloud_application_live_view.this.id
}

