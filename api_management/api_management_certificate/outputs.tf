output "name" {
  value = azurerm_api_management_certificate.this.name
}

output "api_management_name" {
  value = azurerm_api_management_certificate.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_certificate.this.resource_group_name
}

output "data" {
  value = azurerm_api_management_certificate.this.data
}

output "password" {
  value     = azurerm_api_management_certificate.this.password
  sensitive = true
}

output "key_vault_secret_id" {
  value = azurerm_api_management_certificate.this.key_vault_secret_id
}

output "key_vault_identity_client_id" {
  value = azurerm_api_management_certificate.this.key_vault_identity_client_id
}

output "id" {
  description = "The ID of the API Management Certificate."
  value       = azurerm_api_management_certificate.this.id
}

output "expiration" {
  description = "The Expiration Date of this Certificate, formatted as an RFC3339 string."
  value       = azurerm_api_management_certificate.this.expiration
}

output "subject" {
  description = "The Subject of this Certificate."
  value       = azurerm_api_management_certificate.this.subject
}

output "thumbprint" {
  description = "The Thumbprint of this Certificate."
  value       = azurerm_api_management_certificate.this.thumbprint
}

