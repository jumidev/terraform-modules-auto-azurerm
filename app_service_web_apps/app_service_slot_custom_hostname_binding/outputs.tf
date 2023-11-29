output "app_service_slot_id" {
  value = azurerm_app_service_slot_custom_hostname_binding.this.app_service_slot_id
}

output "hostname" {
  value = azurerm_app_service_slot_custom_hostname_binding.this.hostname
}

output "ssl_state" {
  value = azurerm_app_service_slot_custom_hostname_binding.this.ssl_state
}

output "thumbprint" {
  value = azurerm_app_service_slot_custom_hostname_binding.this.thumbprint
}

output "id" {
  description = "The ID of the App Service Custom Hostname Binding"
  value       = azurerm_app_service_slot_custom_hostname_binding.this.id
}

output "virtual_ip" {
  description = "The virtual IP address assigned to the hostname if IP based SSL is enabled."
  value       = azurerm_app_service_slot_custom_hostname_binding.this.virtual_ip
}

