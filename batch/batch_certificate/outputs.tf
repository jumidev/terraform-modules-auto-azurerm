output "account_name" {
  value = azurerm_batch_certificate.this.account_name
}

output "resource_group_name" {
  value = azurerm_batch_certificate.this.resource_group_name
}

output "certificate" {
  value = azurerm_batch_certificate.this.certificate
}

output "format" {
  value = azurerm_batch_certificate.this.format
}

output "password" {
  value     = azurerm_batch_certificate.this.password
  sensitive = true
}

output "thumbprint" {
  value = azurerm_batch_certificate.this.thumbprint
}

output "thumbprint_algorithm" {
  value = azurerm_batch_certificate.this.thumbprint_algorithm
}

output "id" {
  description = "The ID of the Batch Certificate."
  value       = azurerm_batch_certificate.this.id
}

output "name" {
  description = "The generated name of the certificate."
  value       = azurerm_batch_certificate.this.name
}

output "public_data" {
  description = "The public key of the certificate."
  value       = azurerm_batch_certificate.this.public_data
}

