output "name" {
  value = azurerm_container_app_custom_domain.this.name
}

output "container_app_id" {
  value = azurerm_container_app_custom_domain.this.container_app_id
}

output "container_app_environment_certificate_id" {
  value = azurerm_container_app_custom_domain.this.container_app_environment_certificate_id
}

output "certificate_binding_type" {
  value = azurerm_container_app_custom_domain.this.certificate_binding_type
}

