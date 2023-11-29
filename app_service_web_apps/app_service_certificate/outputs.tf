output "name" {
  value = azurerm_app_service_certificate.this.name
}

output "resource_group_name" {
  value = azurerm_app_service_certificate.this.resource_group_name
}

output "location" {
  value = azurerm_app_service_certificate.this.location
}

output "pfx_blob" {
  value = azurerm_app_service_certificate.this.pfx_blob
}

output "password" {
  value     = azurerm_app_service_certificate.this.password
  sensitive = true
}

output "app_service_plan_id" {
  value = azurerm_app_service_certificate.this.app_service_plan_id
}

output "key_vault_secret_id" {
  value = azurerm_app_service_certificate.this.key_vault_secret_id
}

output "tags" {
  value = azurerm_app_service_certificate.this.tags
}

output "id" {
  description = "The App Service certificate ID."
  value       = azurerm_app_service_certificate.this.id
}

output "friendly_name" {
  description = "The friendly name of the certificate."
  value       = azurerm_app_service_certificate.this.friendly_name
}

output "subject_name" {
  description = "The subject name of the certificate."
  value       = azurerm_app_service_certificate.this.subject_name
}

output "host_names" {
  description = "List of host names the certificate applies to."
  value       = azurerm_app_service_certificate.this.host_names
}

output "issuer" {
  description = "The name of the certificate issuer."
  value       = azurerm_app_service_certificate.this.issuer
}

output "issue_date" {
  description = "The issue date for the certificate."
  value       = azurerm_app_service_certificate.this.issue_date
}

output "expiration_date" {
  description = "The expiration date for the certificate."
  value       = azurerm_app_service_certificate.this.expiration_date
}

output "thumbprint" {
  description = "The thumbprint for the certificate."
  value       = azurerm_app_service_certificate.this.thumbprint
}

output "hosting_environment_profile_id" {
  description = "The ID of the App Service Environment where the certificate is in use."
  value       = azurerm_app_service_certificate.this.hosting_environment_profile_id
}

