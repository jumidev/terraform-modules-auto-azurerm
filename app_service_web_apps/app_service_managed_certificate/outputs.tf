output "custom_hostname_binding_id" {
  value = azurerm_app_service_managed_certificate.this.custom_hostname_binding_id
}

output "tags" {
  value = azurerm_app_service_managed_certificate.this.tags
}

output "id" {
  description = "The ID of the App Service Managed Certificate."
  value       = azurerm_app_service_managed_certificate.this.id
}

output "canonical_name" {
  description = "The Canonical Name of the Certificate."
  value       = azurerm_app_service_managed_certificate.this.canonical_name
}

output "expiration_date" {
  description = "The expiration date of the Certificate."
  value       = azurerm_app_service_managed_certificate.this.expiration_date
}

output "friendly_name" {
  description = "The friendly name of the Certificate."
  value       = azurerm_app_service_managed_certificate.this.friendly_name
}

output "host_names" {
  description = "The list of Host Names for the Certificate."
  value       = azurerm_app_service_managed_certificate.this.host_names
}

output "issue_date" {
  description = "The Start date for the Certificate."
  value       = azurerm_app_service_managed_certificate.this.issue_date
}

output "issuer" {
  description = "The issuer of the Certificate."
  value       = azurerm_app_service_managed_certificate.this.issuer
}

output "subject_name" {
  description = "The Subject Name for the Certificate."
  value       = azurerm_app_service_managed_certificate.this.subject_name
}

output "thumbprint" {
  description = "The Certificate Thumbprint."
  value       = azurerm_app_service_managed_certificate.this.thumbprint
}

