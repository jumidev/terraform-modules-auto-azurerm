output "name" {
  value = azurerm_spring_cloud_gateway_custom_domain.this.name
}

output "spring_cloud_gateway_id" {
  value = azurerm_spring_cloud_gateway_custom_domain.this.spring_cloud_gateway_id
}

output "thumbprint" {
  value = azurerm_spring_cloud_gateway_custom_domain.this.thumbprint
}

output "id" {
  description = "The ID of the Spring Cloud Gateway Custom Domain."
  value       = azurerm_spring_cloud_gateway_custom_domain.this.id
}

