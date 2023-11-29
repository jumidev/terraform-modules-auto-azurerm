output "name" {
  value = azurerm_api_management_gateway_host_name_configuration.this.name
}

output "api_management_id" {
  value = azurerm_api_management_gateway_host_name_configuration.this.api_management_id
}

output "gateway_name" {
  value = azurerm_api_management_gateway_host_name_configuration.this.gateway_name
}

output "certificate_id" {
  value = azurerm_api_management_gateway_host_name_configuration.this.certificate_id
}

output "host_name" {
  value = azurerm_api_management_gateway_host_name_configuration.this.host_name
}

output "request_client_certificate_enabled" {
  value = azurerm_api_management_gateway_host_name_configuration.this.request_client_certificate_enabled
}

output "http2_enabled" {
  value = azurerm_api_management_gateway_host_name_configuration.this.http2_enabled
}

output "tls10_enabled" {
  value = azurerm_api_management_gateway_host_name_configuration.this.tls10_enabled
}

output "tls11_enabled" {
  value = azurerm_api_management_gateway_host_name_configuration.this.tls11_enabled
}

output "id" {
  description = "The ID of the API Management Gateway Host Name Configuration."
  value       = azurerm_api_management_gateway_host_name_configuration.this.id
}

