output "name" {
  value = azurerm_spring_cloud_container_deployment.this.name
}

output "spring_cloud_app_id" {
  value = azurerm_spring_cloud_container_deployment.this.spring_cloud_app_id
}

output "image" {
  value = azurerm_spring_cloud_container_deployment.this.image
}

output "server" {
  value = azurerm_spring_cloud_container_deployment.this.server
}

output "addon_json" {
  value = azurerm_spring_cloud_container_deployment.this.addon_json
}

output "application_performance_monitoring_ids" {
  value = azurerm_spring_cloud_container_deployment.this.application_performance_monitoring_ids
}

output "arguments" {
  value = azurerm_spring_cloud_container_deployment.this.arguments
}

output "commands" {
  value = azurerm_spring_cloud_container_deployment.this.commands
}

output "environment_variables" {
  value = azurerm_spring_cloud_container_deployment.this.environment_variables
}

output "instance_count" {
  value = azurerm_spring_cloud_container_deployment.this.instance_count
}

output "language_framework" {
  value = azurerm_spring_cloud_container_deployment.this.language_framework
}

output "quota" {
  value = azurerm_spring_cloud_container_deployment.this.quota
}

output "id" {
  description = "The ID of the Spring Cloud Container Deployment."
  value       = azurerm_spring_cloud_container_deployment.this.id
}

