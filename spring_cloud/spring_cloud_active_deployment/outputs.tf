output "spring_cloud_app_id" {
  value = azurerm_spring_cloud_active_deployment.this.spring_cloud_app_id
}

output "deployment_name" {
  value = azurerm_spring_cloud_active_deployment.this.deployment_name
}

output "id" {
  description = "The ID of the Spring Cloud Active Deployment."
  value       = azurerm_spring_cloud_active_deployment.this.id
}

