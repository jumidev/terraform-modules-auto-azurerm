output "name" {
  value = azurerm_spring_cloud_api_portal.this.name
}

output "spring_cloud_service_id" {
  value = azurerm_spring_cloud_api_portal.this.spring_cloud_service_id
}

output "gateway_ids" {
  value = azurerm_spring_cloud_api_portal.this.gateway_ids
}

output "https_only_enabled" {
  value = azurerm_spring_cloud_api_portal.this.https_only_enabled
}

output "instance_count" {
  value = azurerm_spring_cloud_api_portal.this.instance_count
}

output "public_network_access_enabled" {
  value = azurerm_spring_cloud_api_portal.this.public_network_access_enabled
}

output "sso" {
  value = azurerm_spring_cloud_api_portal.this.sso
}

output "id" {
  description = "The ID of the Spring Cloud API Portal."
  value       = azurerm_spring_cloud_api_portal.this.id
}

output "url" {
  description = "TODO."
  value       = azurerm_spring_cloud_api_portal.this.url
}

