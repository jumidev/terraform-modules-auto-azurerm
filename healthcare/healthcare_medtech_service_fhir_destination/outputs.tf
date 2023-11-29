output "name" {
  value = azurerm_healthcare_medtech_service_fhir_destination.this.name
}

output "medtech_service_id" {
  value = azurerm_healthcare_medtech_service_fhir_destination.this.medtech_service_id
}

output "location" {
  value = azurerm_healthcare_medtech_service_fhir_destination.this.location
}

output "destination_fhir_service_id" {
  value = azurerm_healthcare_medtech_service_fhir_destination.this.destination_fhir_service_id
}

output "destination_identity_resolution_type" {
  value = azurerm_healthcare_medtech_service_fhir_destination.this.destination_identity_resolution_type
}

output "destination_fhir_mapping_json" {
  value = azurerm_healthcare_medtech_service_fhir_destination.this.destination_fhir_mapping_json
}

output "id" {
  description = "The ID of the Healthcare Med Tech Service Fhir Destination."
  value       = azurerm_healthcare_medtech_service_fhir_destination.this.id
}

