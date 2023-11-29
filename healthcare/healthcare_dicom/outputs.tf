output "name" {
  value = azurerm_healthcare_dicom.this.name
}

output "workspace_id" {
  value = azurerm_healthcare_dicom.this.workspace_id
}

output "location" {
  value = azurerm_healthcare_dicom.this.location
}

output "identity" {
  value = azurerm_healthcare_dicom.this.identity
}

output "public_network_access_enabled" {
  value = azurerm_healthcare_dicom.this.public_network_access_enabled
}

output "tags" {
  value = azurerm_healthcare_dicom.this.tags
}

output "id" {
  description = "The ID of the Healthcare DICOM Service."
  value       = azurerm_healthcare_dicom.this.id
}

output "authentication" {
  description = "The 'authentication' block."
  value       = azurerm_healthcare_dicom.this.authentication
}

output "service_url" {
  description = "The url of the Healthcare DICOM Services."
  value       = azurerm_healthcare_dicom.this.service_url
}

output "authority" {
  description = "The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform. Authority must be registered to Azure AD and in the following format: <https://{Azure-AD-endpoint}/{tenant-id>}."
  value       = azurerm_healthcare_dicom.this.authority
}

output "audience" {
  description = "The intended audience to receive authentication tokens for the service. The default value is <https://dicom.azurehealthcareapis.azure.com>"
  value       = azurerm_healthcare_dicom.this.audience
}

