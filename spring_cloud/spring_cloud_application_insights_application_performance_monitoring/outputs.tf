output "name" {
  value = azurerm_spring_cloud_application_insights_application_performance_monitoring.this.name
}

output "spring_cloud_service_id" {
  value = azurerm_spring_cloud_application_insights_application_performance_monitoring.this.spring_cloud_service_id
}

output "globally_enabled" {
  value = azurerm_spring_cloud_application_insights_application_performance_monitoring.this.globally_enabled
}

output "connection_string" {
  value = azurerm_spring_cloud_application_insights_application_performance_monitoring.this.connection_string
}

output "role_name" {
  value = azurerm_spring_cloud_application_insights_application_performance_monitoring.this.role_name
}

output "role_instance" {
  value = azurerm_spring_cloud_application_insights_application_performance_monitoring.this.role_instance
}

output "sampling_percentage" {
  value = azurerm_spring_cloud_application_insights_application_performance_monitoring.this.sampling_percentage
}

output "sampling_requests_per_second" {
  value = azurerm_spring_cloud_application_insights_application_performance_monitoring.this.sampling_requests_per_second
}

output "id" {
  description = "The ID of the Spring Cloud Application Performance Monitoring resource for Application Insights."
  value       = azurerm_spring_cloud_application_insights_application_performance_monitoring.this.id
}

