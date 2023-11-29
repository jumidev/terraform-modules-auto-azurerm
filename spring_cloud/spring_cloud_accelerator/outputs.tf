output "name" {
  value = azurerm_spring_cloud_accelerator.this.name
}

output "spring_cloud_service_id" {
  value = azurerm_spring_cloud_accelerator.this.spring_cloud_service_id
}

output "id" {
  description = "The ID of the Spring Cloud Accelerator."
  value       = azurerm_spring_cloud_accelerator.this.id
}

