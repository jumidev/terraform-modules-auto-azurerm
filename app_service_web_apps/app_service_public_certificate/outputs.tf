output "app_service_name" {
  value = azurerm_app_service_public_certificate.this.app_service_name
}

output "resource_group_name" {
  value = azurerm_app_service_public_certificate.this.resource_group_name
}

output "certificate_name" {
  value = azurerm_app_service_public_certificate.this.certificate_name
}

output "certificate_location" {
  value = azurerm_app_service_public_certificate.this.certificate_location
}

output "blob" {
  value = azurerm_app_service_public_certificate.this.blob
}

output "id" {
  description = "The ID of the App Service Public Certificate."
  value       = azurerm_app_service_public_certificate.this.id
}

output "thumbprint" {
  description = "The thumbprint of the public certificate."
  value       = azurerm_app_service_public_certificate.this.thumbprint
}

