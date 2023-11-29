output "name" {
  value = azurerm_spring_cloud_custom_domain.this.name
}

output "spring_cloud_app_id" {
  value = azurerm_spring_cloud_custom_domain.this.spring_cloud_app_id
}

output "certificate_name" {
  value = azurerm_spring_cloud_custom_domain.this.certificate_name
}

output "thumbprint" {
  value = azurerm_spring_cloud_custom_domain.this.thumbprint
}

output "id" {
  description = "The ID of the Spring Cloud Custom Domain."
  value       = azurerm_spring_cloud_custom_domain.this.id
}

