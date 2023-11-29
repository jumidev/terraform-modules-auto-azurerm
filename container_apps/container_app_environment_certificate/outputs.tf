output "name" {
  value = azurerm_container_app_environment_certificate.this.name
}

output "container_app_environment_id" {
  value = azurerm_container_app_environment_certificate.this.container_app_environment_id
}

output "certificate_blob_base64" {
  value     = azurerm_container_app_environment_certificate.this.certificate_blob_base64
  sensitive = true
}

output "certificate_password" {
  value     = random_string.certificate_password.result
  sensitive = true
}

output "tags" {
  value = azurerm_container_app_environment_certificate.this.tags
}

output "id" {
  description = "The ID of the Container App Environment Certificate"
  value       = azurerm_container_app_environment_certificate.this.id
}

output "expiration_date" {
  description = "The expiration date for the Certificate."
  value       = azurerm_container_app_environment_certificate.this.expiration_date
}

output "issue_date" {
  description = "The date of issue for the Certificate."
  value       = azurerm_container_app_environment_certificate.this.issue_date
}

output "issuer" {
  description = "The Certificate Issuer."
  value       = azurerm_container_app_environment_certificate.this.issuer
}

output "subject_name" {
  description = "The Subject Name for the Certificate."
  value       = azurerm_container_app_environment_certificate.this.subject_name
}

output "thumbprint" {
  description = "The Thumbprint of the Certificate."
  value       = azurerm_container_app_environment_certificate.this.thumbprint
}

