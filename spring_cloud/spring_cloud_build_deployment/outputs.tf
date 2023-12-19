output "name" {
  value = azurerm_spring_cloud_build_deployment.this.name
}

output "spring_cloud_app_id" {
  value = azurerm_spring_cloud_build_deployment.this.spring_cloud_app_id
}

output "build_result_id" {
  value = azurerm_spring_cloud_build_deployment.this.build_result_id
}

output "addon_json" {
  value = azurerm_spring_cloud_build_deployment.this.addon_json
}

output "application_performance_monitoring_ids" {
  value = azurerm_spring_cloud_build_deployment.this.application_performance_monitoring_ids
}

output "environment_variables" {
  value = azurerm_spring_cloud_build_deployment.this.environment_variables
}

output "instance_count" {
  value = azurerm_spring_cloud_build_deployment.this.instance_count
}

output "quota" {
  value = azurerm_spring_cloud_build_deployment.this.quota
}

output "id" {
  description = "The ID of the Spring Cloud Build Deployment."
  value       = azurerm_spring_cloud_build_deployment.this.id
}

