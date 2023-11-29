output "api_management_id" {
  value = azurerm_api_management_gateway_certificate_authority.this.api_management_id
}

output "certificate_name" {
  value = azurerm_api_management_gateway_certificate_authority.this.certificate_name
}

output "gateway_name" {
  value = azurerm_api_management_gateway_certificate_authority.this.gateway_name
}

output "is_trusted" {
  value = azurerm_api_management_gateway_certificate_authority.this.is_trusted
}

output "id" {
  description = "The ID of the API Management Gateway Certificate Authority."
  value       = azurerm_api_management_gateway_certificate_authority.this.id
}

