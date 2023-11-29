output "name" {
  value = azurerm_spring_cloud_certificate.this.name
}

output "resource_group_name" {
  value = azurerm_spring_cloud_certificate.this.resource_group_name
}

output "service_name" {
  value = azurerm_spring_cloud_certificate.this.service_name
}

output "exclude_private_key" {
  value = azurerm_spring_cloud_certificate.this.exclude_private_key
}

output "key_vault_certificate_id" {
  value = azurerm_spring_cloud_certificate.this.key_vault_certificate_id
}

output "certificate_content" {
  value = azurerm_spring_cloud_certificate.this.certificate_content
}

output "id" {
  description = "The ID of the Spring Cloud Certificate."
  value       = azurerm_spring_cloud_certificate.this.id
}

output "thumbprint" {
  description = "The thumbprint of the Spring Cloud certificate."
  value       = azurerm_spring_cloud_certificate.this.thumbprint
}

