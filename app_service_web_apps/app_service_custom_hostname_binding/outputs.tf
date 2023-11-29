output "hostname" {
  value = azurerm_app_service_custom_hostname_binding.this.hostname
}

output "app_service_name" {
  value = azurerm_app_service_custom_hostname_binding.this.app_service_name
}

output "resource_group_name" {
  value = azurerm_app_service_custom_hostname_binding.this.resource_group_name
}

output "ssl_state" {
  value = azurerm_app_service_custom_hostname_binding.this.ssl_state
}

output "thumbprint" {
  value = azurerm_app_service_custom_hostname_binding.this.thumbprint
}

output "id" {
  description = "The ID of the App Service Custom Hostname Binding"
  value       = azurerm_app_service_custom_hostname_binding.this.id
}

output "virtual_ip" {
  description = "The virtual IP address assigned to the hostname if IP based SSL is enabled."
  value       = azurerm_app_service_custom_hostname_binding.this.virtual_ip
}

