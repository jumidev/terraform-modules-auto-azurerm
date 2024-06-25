output "container_app_environment_id" {
  value = azurerm_container_app_environment_custom_domain.this.container_app_environment_id
}

output "certificate_blob_base64" {
  value     = azurerm_container_app_environment_custom_domain.this.certificate_blob_base64
  sensitive = true
}

output "certificate_password" {
  value     = random_string.certificate_password.result
  sensitive = true
}

output "dns_suffix" {
  value = azurerm_container_app_environment_custom_domain.this.dns_suffix
}

