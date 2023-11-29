output "certificate_id" {
  value = azurerm_app_service_certificate_binding.this.certificate_id
}

output "hostname_binding_id" {
  value = azurerm_app_service_certificate_binding.this.hostname_binding_id
}

output "ssl_state" {
  value = azurerm_app_service_certificate_binding.this.ssl_state
}

output "id" {
  description = "The ID of the App Service Certificate Binding."
  value       = azurerm_app_service_certificate_binding.this.id
}

output "app_service_name" {
  description = "The name of the App Service to which the certificate was bound."
  value       = azurerm_app_service_certificate_binding.this.app_service_name
}

output "hostname" {
  description = "The hostname of the bound certificate."
  value       = azurerm_app_service_certificate_binding.this.hostname
}

output "thumbprint" {
  description = "The certificate thumbprint."
  value       = azurerm_app_service_certificate_binding.this.thumbprint
}

