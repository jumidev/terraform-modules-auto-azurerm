output "name" {
  value = azurerm_api_management_api.this.name
}

output "api_management_name" {
  value = azurerm_api_management_api.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_api.this.resource_group_name
}

output "revision" {
  value = azurerm_api_management_api.this.revision
}

output "api_type" {
  value = azurerm_api_management_api.this.api_type
}

output "display_name" {
  value = azurerm_api_management_api.this.display_name
}

output "path" {
  value = azurerm_api_management_api.this.path
}

output "protocols" {
  value = azurerm_api_management_api.this.protocols
}

output "contact" {
  value = azurerm_api_management_api.this.contact
}

output "description" {
  value = azurerm_api_management_api.this.description
}

output "import" {
  value = azurerm_api_management_api.this.import
}

output "license" {
  value = azurerm_api_management_api.this.license
}

output "oauth2_authorization" {
  value = azurerm_api_management_api.this.oauth2_authorization
}

output "openid_authentication" {
  value = azurerm_api_management_api.this.openid_authentication
}

output "service_url" {
  value = azurerm_api_management_api.this.service_url
}

output "soap_pass_through" {
  value = azurerm_api_management_api.this.soap_pass_through
}

output "subscription_key_parameter_names" {
  value = azurerm_api_management_api.this.subscription_key_parameter_names
}

output "subscription_required" {
  value = azurerm_api_management_api.this.subscription_required
}

output "terms_of_service_url" {
  value = azurerm_api_management_api.this.terms_of_service_url
}

output "version" {
  value = azurerm_api_management_api.this.version
}

output "version_set_id" {
  value = azurerm_api_management_api.this.version_set_id
}

output "revision_description" {
  value = azurerm_api_management_api.this.revision_description
}

output "version_description" {
  value = azurerm_api_management_api.this.version_description
}

output "source_api_id" {
  value = azurerm_api_management_api.this.source_api_id
}

output "id" {
  description = "The ID of the API Management API."
  value       = azurerm_api_management_api.this.id
}

output "is_current" {
  description = "Is this the current API Revision?"
  value       = azurerm_api_management_api.this.is_current
}

output "is_online" {
  description = "Is this API Revision online/accessible via the Gateway?"
  value       = azurerm_api_management_api.this.is_online
}

output "version" {
  description = "The Version number of this API, if this API is versioned."
  value       = azurerm_api_management_api.this.version
}

output "version_set_id" {
  description = "The ID of the Version Set which this API is associated with."
  value       = azurerm_api_management_api.this.version_set_id
}

