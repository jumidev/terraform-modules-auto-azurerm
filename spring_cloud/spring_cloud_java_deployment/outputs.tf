output "name" {
  value = azurerm_spring_cloud_java_deployment.this.name
}

output "spring_cloud_app_id" {
  value = azurerm_spring_cloud_java_deployment.this.spring_cloud_app_id
}

output "environment_variables" {
  value = azurerm_spring_cloud_java_deployment.this.environment_variables
}

output "instance_count" {
  value = azurerm_spring_cloud_java_deployment.this.instance_count
}

output "jvm_options" {
  value = azurerm_spring_cloud_java_deployment.this.jvm_options
}

output "quota" {
  value = azurerm_spring_cloud_java_deployment.this.quota
}

output "runtime_version" {
  value = azurerm_spring_cloud_java_deployment.this.runtime_version
}

output "id" {
  description = "The ID of the Spring Cloud Deployment."
  value       = azurerm_spring_cloud_java_deployment.this.id
}

