output "name" {
  value = azurerm_spring_cloud_api_portal_custom_domain.this.name
}

output "spring_cloud_api_portal_id" {
  value = azurerm_spring_cloud_api_portal_custom_domain.this.spring_cloud_api_portal_id
}

output "thumbprint" {
  value = azurerm_spring_cloud_api_portal_custom_domain.this.thumbprint
}

output "id" {
  description = "The ID of the Spring Cloud API Portal Domain."
  value       = azurerm_spring_cloud_api_portal_custom_domain.this.id
}

