output "name" {
  value = azurerm_healthcare_fhir_service.this.name
}

output "resource_group_name" {
  value = azurerm_healthcare_fhir_service.this.resource_group_name
}

output "workspace_id" {
  value = azurerm_healthcare_fhir_service.this.workspace_id
}

output "location" {
  value = azurerm_healthcare_fhir_service.this.location
}

output "kind" {
  value = azurerm_healthcare_fhir_service.this.kind
}

output "identity" {
  value = azurerm_healthcare_fhir_service.this.identity
}

output "access_policy_object_ids" {
  value = azurerm_healthcare_fhir_service.this.access_policy_object_ids
}

output "cors" {
  value = azurerm_healthcare_fhir_service.this.cors
}

output "container_registry_login_server_url" {
  value = azurerm_healthcare_fhir_service.this.container_registry_login_server_url
}

output "oci_artifact" {
  value = azurerm_healthcare_fhir_service.this.oci_artifact
}

output "authentication" {
  value = azurerm_healthcare_fhir_service.this.authentication
}

output "configuration_export_storage_account_name" {
  value = azurerm_healthcare_fhir_service.this.configuration_export_storage_account_name
}

output "tags" {
  value = azurerm_healthcare_fhir_service.this.tags
}

output "id" {
  description = "The ID of the Healthcare FHIR Service."
  value       = azurerm_healthcare_fhir_service.this.id
}

output "public_network_access_enabled" {
  description = "Whether public networks access is enabled."
  value       = azurerm_healthcare_fhir_service.this.public_network_access_enabled
}

